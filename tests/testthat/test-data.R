describe("mars_cortical", {
  it("is a valid cortical ggseg_atlas", {
    expect_s3_class(mars_cortical(), "ggseg_atlas")
    expect_s3_class(mars_cortical(), "cortical_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(mars_cortical()))
  })

  it("renders with ggseg", {
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = mars_cortical(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = mars_cortical()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("mars-cortical-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = mars_cortical())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })

  it("ships the all-black MarsAtlas lookup table unchanged", {
    expect_true(all(mars_cortical()$palette == "#000000"))
  })
})

describe("mars_subcortical", {
  it("is a valid subcortical ggseg_atlas", {
    expect_s3_class(mars_subcortical(), "ggseg_atlas")
    expect_s3_class(mars_subcortical(), "subcortical_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(mars_subcortical()))
  })

  it("keeps the cortical silhouette as context", {
    expect_true(any(grepl(
      "^cortex",
      ggseg.formats::atlas_geom(mars_subcortical())$label
    )))
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = mars_subcortical())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
