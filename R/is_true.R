#' Vectorized isTRUE
#'
#' @param x vector
#'
#' @seealso
#' - [all_true()]
#' - [rlang::is_true()]
#'
is_true <- function (x) {
  .Defunct()
  #.Deprecated("all_true or isTRUE or rlang::is_true")
  vapply(x, FUN = isTRUE, FUN.VALUE = TRUE)
}
