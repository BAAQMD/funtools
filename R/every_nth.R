#' every_nth
#'
#' Take every nth element of a vector
#'
#' @param x vector
#' @param n positive integer
#'
#' @importFrom rlang is_integerish
#'
#' @export
every_nth <- function (x, n) {
  stopifnot(n > 0)
  stopifnot(rlang::is_integerish(n))
  i <- seq(1, length(x), by = n)
  return(x[i])
}
