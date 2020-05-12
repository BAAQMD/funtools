#' all_same
#'
#' Test whether all elements of a vector are equal
#'
#' @details Uses `==` to test for sameness.
#'
#' @param x vector
#' @param na.rm passed to [`all_true()`]
#'
#' @export
all_same <- function (x, na.rm = FALSE) {
  all_true(x == x[1], na.rm = na.rm)
}
