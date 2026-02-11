#' MarsAtlas Cortical Parcellation
#'
#' Cortical parcellation based on macroanatomical information from
#' Auzias et al. (2016), with 41 regions per hemisphere.
#' Contains 2D polygon geometry for [ggseg::geom_brain()] and
#' 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @docType data
#' @name marsatlas_cortical
#' @usage data(marsatlas_cortical)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Auzias G, Coulon O, Brovelli A (2016).
#'   MarsAtlas: A cortical parcellation atlas for functional mapping.
#'   \doi{10.1002/hbm.23121}
#'
#' @format A [ggseg.formats::ggseg_atlas] object (cortical).
#' @examples
#' data(marsatlas_cortical)
#' marsatlas_cortical
"marsatlas_cortical"

#' MarsAtlas Subcortical Structures
#'
#' Subcortical structures from the MarsAtlas parcellation.
#' Contains 2D polygon geometry and 3D meshes.
#'
#' @docType data
#' @name marsatlas_subcortical
#' @usage data(marsatlas_subcortical)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references Auzias G, Coulon O, Brovelli A (2016).
#'   MarsAtlas: A cortical parcellation atlas for functional mapping.
#'   \doi{10.1002/hbm.23121}
#'
#' @format A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @examples
#' data(marsatlas_subcortical)
#' marsatlas_subcortical
"marsatlas_subcortical"
