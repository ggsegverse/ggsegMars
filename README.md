

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegMars

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegMars/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegMars/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggseg.r-universe.dev/badges/ggsegMars.png)](https://ggseg.r-universe.dev/ggsegMars)
<!-- badges: end -->

MarsAtlas cortical and subcortical parcellation for the ggseg ecosystem.

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegMars")
```

You can install this package from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ggsegverse/ggsegMars")
```

## Cortical atlas

``` r
library(ggseg)
library(ggsegMars)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = marsatlas_cortical(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = marsatlas_cortical()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-cortical-1.png" style="width:100.0%" />

## Subcortical atlas

``` r
ggplot() +
  geom_brain(
    atlas = marsatlas_subcortical(),
    mapping = aes(fill = label),
    position = position_brain(. ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = marsatlas_subcortical()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-subcortical-1.png" style="width:100.0%" />

## Data source

Auzias G, Coulon O, Brovelli A (2016). MarsAtlas: A cortical
parcellation atlas for functional mapping. *Human Brain Mapping*, 37(4),
1573-1592.
