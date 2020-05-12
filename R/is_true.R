#' Vectorized isTRUE
#'
#' @param x vector
#'
#' @seealso
#' - [all_true()]
#' - [rlang::is_true()]
#'
#' @export
is_true <- function (x) {
  vapply(x, FUN = isTRUE, FUN.VALUE = TRUE)
}
