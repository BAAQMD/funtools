#' eval_f
#'
#' @param x
#' @param ...
#' @param env
#'
#' @importFrom rlang as_quosure eval_tidy
#'
#' @return
#' @export
eval_f <- function (x, ..., env = NULL) {
  quosured <- rlang::as_quosure(x, env = env)
  rlang::eval_tidy(quosured, ...)
}
