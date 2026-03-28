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
#> Error in marsatlas_cortical(): object '.marsatlas_cortical' not found
```
