#' Vectorized isTRUE
#'
#' @export
is_true <- function (x) {
  vapply(x, FUN = isTRUE, FUN.VALUE = TRUE)
}
