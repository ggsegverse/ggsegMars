# MarsAtlas Subcortical Structures

Subcortical structures from the MarsAtlas parcellation. Contains 2D
polygon geometry and 3D meshes.

## Usage

``` r
marsatlas_subcortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## References

Auzias G, Coulon O, Brovelli A (2016). MarsAtlas: A cortical
parcellation atlas for functional mapping.
[doi:10.1002/hbm.23121](https://doi.org/10.1002/hbm.23121)

## See also

Other ggseg_atlases:
[`marsatlas_cortical()`](https://ggseg.github.io/ggsegMars/reference/marsatlas_cortical.md)

## Examples

``` r
marsatlas_subcortical()
#> 
#> ── marsatlas_subcortical ggseg atlas ───────────────────────────────────────────
#> Type: subcortical
#> Regions: 9
#> Hemispheres: left, right
#> Views: axial_1, axial_2, axial_3, coronal_1, coronal_2, coronal_3, axial_4,
#> sagittal
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 10 × 3
#>    hemi  region                   label                        
#>    <chr> <chr>                    <chr>                        
#>  1 left  isthmus cingulate cortex Left_Isthmus_Cingulate_Cortex
#>  2 left  rostral dorsolateral sup Left_Rostral_Dorsolateral_Sup
#>  3 left  rostral medial prefronta Left_Rostral_Medial_Prefronta
#>  4 right isthmus cingulate corte  Right_Isthmus_Cingulate_Corte
#>  5 right rostral ventrolateral p  Right_Rostral_Ventrolateral_P
#>  6 right rostral dorsolateral su  Right_Rostral_Dorsolateral_Su
#>  7 left  puttamen                 Left_Puttamen                
#>  8 left  amygdala                 Left_Amygdala                
#>  9 left  accumbens                Left_Accumbens               
#> 10 right amygdala                 Right_Amygdala               
```
