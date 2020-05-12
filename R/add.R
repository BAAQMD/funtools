#' add
#'
#' Add all of the elements of a list together
#'
#' @param ... objects compatible with the `+` operator
#' @param na.rm passed to `Reduce()`
#'
#' @export
add <- function (..., na.rm = TRUE) {
  Reduce(`+`, list(...))
}
