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
  atlas_name = "marsatlas",
  output_dir = "data-raw/marsatlas",
  regheader = TRUE,
  tolerance = 1,
  smoothness = 2,
  decimate = 0.5,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
)

.marsatlas_cortical <- atlases$cortical
.marsatlas_subcortical <- atlases$subcortical

print(.marsatlas_cortical)
plot(.marsatlas_cortical)
print(.marsatlas_subcortical)
plot(.marsatlas_subcortical)

usethis::use_data(.marsatlas_cortical, .marsatlas_subcortical,
  overwrite = TRUE, compress = "xz", internal = TRUE)
