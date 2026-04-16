#' MarsAtlas Cortical Parcellation
#'
#' Cortical parcellation based on macroanatomical information from
#' Auzias et al. (2016), with 41 regions per hemisphere.
#' Contains 2D polygon geometry for [ggseg::geom_brain()] and
#' 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#' @family cortical_atlases
#'
#' @references Auzias G, Coulon O, Brovelli A (2016).
#'   MarsAtlas: A cortical parcellation atlas for functional mapping.
#'   \doi{10.1002/hbm.23121}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' marsatlas_cortical()
marsatlas_cortical <- function() .marsatlas_cortical
#' MarsAtlas Subcortical Structures
#'
#' Subcortical structures from the MarsAtlas parcellation.
#' Contains 2D polygon geometry and 3D meshes.
#'
#' @family ggseg_atlases
#' @family subcortical_atlases
#'
#' @references Auzias G, Coulon O, Brovelli A (2016).
#'   MarsAtlas: A cortical parcellation atlas for functional mapping.
#'   \doi{10.1002/hbm.23121}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' marsatlas_subcortical()
marsatlas_subcortical <- function() .marsatlas_subcortical
#' MarsAtlas Cerebellar Parcellation
#'
#' Cerebellar regions from the MarsAtlas parcellation.
#' Contains 2D polygon geometry and 3D meshes.
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references Auzias G, Coulon O, Brovelli A (2016).
#'   MarsAtlas: A cortical parcellation atlas for functional mapping.
#'   \doi{10.1002/hbm.23121}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' marsatlas_cerebellar()
marsatlas_cerebellar <- function() .marsatlas_cerebellar # nolint: object_usage_linter.
