#' Atlases renamed from `marsatlas_` to `mars_`
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' The atlas prefix repeated the "atlas" in "MarsAtlas", which no other
#' ggsegverse package does. The atlases are now named after the parcellation
#' alone:
#'
#' * `marsatlas_cortical()` is now [mars_cortical()]
#' * `marsatlas_subcortical()` is now [mars_subcortical()]
#'
#' The old names still return the same atlas, with a warning.
#'
#' @return The renamed atlas, identical to what the new name returns.
#' @name ggsegMars-deprecated
#' @keywords internal
NULL

#' @rdname ggsegMars-deprecated
#' @export
marsatlas_cortical <- function() {
  lifecycle::deprecate_warn("1.1.0", "marsatlas_cortical()", "mars_cortical()")
  mars_cortical()
}

#' @rdname ggsegMars-deprecated
#' @export
marsatlas_subcortical <- function() {
  lifecycle::deprecate_warn(
    "1.1.0",
    "marsatlas_subcortical()",
    "mars_subcortical()"
  )
  mars_subcortical()
}
