# MarsAtlas Cortical Parcellation

Cortical parcellation based on macroanatomical information from Auzias
et al. (2016), with 41 regions per hemisphere. Contains 2D polygon
geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://ggsegverse.github.io/ggseg3d/reference/ggseg3d.html).

## Usage

``` r
marsatlas_cortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Auzias G, Coulon O, Brovelli A (2016). MarsAtlas: A cortical
parcellation atlas for functional mapping.
[doi:10.1002/hbm.23121](https://doi.org/10.1002/hbm.23121)

## See also

Other ggseg_atlases:
[`marsatlas_subcortical()`](https://ggseg.github.io/ggsegMars/reference/marsatlas_subcortical.md)

## Examples

``` r
marsatlas_cortical()
#> 
#> ── marsatlas_cortical ggseg atlas ──────────────────────────────────────────────
#> Type: cortical
#> Regions: 44
#> Hemispheres: left, right
#> Views: inferior, lateral, superior, medial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#>    hemi                                       region
#> 1  left         caudal medial visual cortex ba 17 18
#> 2  left            lateral visual cortex ba 37 19 18
#> 3  left              superior visual cortex ba 19 39
#> 4  left                              cuneus ba 18 19
#> 5  left        rostral medial visual cortex ba 18 19
#> 6  left  medial inferior temporal cortex ba 36 37 20
#> 7  left       rostral inferior temporal cortex ba 20
#> 8  left    caudal middle temporal cortex ba 21 22 39
#> 9  left  caudal superior temporal cortex ba 22 41 42
#> 10 left rostral superior temporal cortex ba 21 22 38
#>                                                   label
#> 1          lh_Left_Caudal_Medial_Visual_Cortex_BA_17-18
#> 2             lh_Left_Lateral_Visual_Cortex_BA_37-19-18
#> 3               lh_Left_Superior_Visual_Cortex_BA_19-39
#> 4                               lh_Left_Cuneus_BA_18-19
#> 5         lh_Left_Rostral_Medial_Visual_Cortex_BA_18-19
#> 6   lh_Left_Medial_Inferior_Temporal_Cortex_BA_36-37-20
#> 7        lh_Left_Rostral_Inferior_Temporal_Cortex_BA_20
#> 8     lh_Left_Caudal_Middle_Temporal_Cortex_BA_21-22-39
#> 9   lh_Left_Caudal_Superior_Temporal_Cortex_BA_22-41-42
#> 10 lh_Left_Rostral_Superior_Temporal_Cortex_BA_21-22-38
#> ... with 78 more rows
```
