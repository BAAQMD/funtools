#' all_true
#'
#' Test whether all elements of a vector are `TRUE`
#'
#' @details Uses `all()` to test for true-ness.
#'
#' @param x vector
#' @param na.rm passed to `all()`
#'
#' @export
all_true <- function (x, na.rm = FALSE) {
  stopifnot(length(x) > 0)
  isTRUE(all(x, na.rm = na.rm))
}

# all_true <- function (x) {
#   isTRUE(unique(x))
# }
