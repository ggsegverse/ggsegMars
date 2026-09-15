library(ggseg.extra)
library(ggseg.formats)


labels <- readr::read_csv(
  here::here("data-raw", "labels_marsatlas.csv"),
  col_types = "ic"
)

lut_file <- here::here("data-raw", "marsatlas_LUT.txt")
writeLines(
  paste(labels$index, labels$name, 0, 0, 0, 0),
  lut_file
)

cli::cli_h1("Creating MarsAtlas")

volume_file <- here::here("data-raw", "atlas_marsatlas.nii.gz")

if (!file.exists(volume_file)) {
  cli::cli_abort("Volume not found: {.path {volume_file}}")
}

atlases <- create_wholebrain_from_volume(
  input_volume = volume_file,
  input_lut = lut_file,
  atlas_name = "mars",
  output_dir = "data-raw/mars",
  cortical_labels = c(
    "Left_Isthmus_Cingulate_Cortex(BA_30)",
    "Right_Isthmus_Cingulate_Cortex(BA_30)"
  ),
  subcortical_opts = list(decimate = 0.5),
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
)

.mars_cortical <- atlas_simplify(atlases$cortical, keep = 0.2)

# The subcortical atlas is two kinds of geometry in one object, and they want
# opposite treatment, so they are polished separately rather than in one pass.
#
# The `cortex_` silhouette is anatomical context: what makes it readable as a
# brain is its sulcal and gyral shape, which is fine-scale detail. Simplifying
# it as hard as a parcel (keep = 0.2) straightens the gyral crowns into facets
# and merges neighbouring sulci, and `atlas_smooth(method = "close")` would
# finish the job, since closing fills anything narrower than the smoothing
# distance and a sulcus is exactly that. So it keeps half its vertices and is
# rounded with `chaikin`, which moves vertices instead of dilating and so
# leaves every sulcus open. That takes the voxel staircase off the outline
# without taking the anatomy with it.
#
# The structures are small, compact and carry no fine detail worth keeping, so
# they simplify harder and are smoothed with `close`, which is what rounds a
# marching-squares parcel into a recognisable nucleus.
.mars_subcortical <- atlases$subcortical |>
  atlas_simplify(keep = 0.5, labels = "^cortex") |>
  atlas_smooth(smoothness = 0.35, labels = "^cortex", method = "chaikin") |>
  atlas_simplify(keep = 0.25, exclude = "^cortex") |>
  atlas_smooth(smoothness = 0.4, exclude = "^cortex")

.mars_cerebellar <- atlases$cerebellar

print(.mars_cortical)
plot(.mars_cortical)
print(.mars_subcortical)
plot(.mars_subcortical)

if (!is.null(.mars_cerebellar)) {
  print(.mars_cerebellar)
  plot(.mars_cerebellar)
  usethis::use_data(
    .mars_cortical,
    .mars_subcortical,
    .mars_cerebellar,
    overwrite = TRUE,
    compress = "xz",
    internal = TRUE
  )
} else {
  usethis::use_data(
    .mars_cortical,
    .mars_subcortical,
    overwrite = TRUE,
    compress = "xz",
    internal = TRUE
  )
}
