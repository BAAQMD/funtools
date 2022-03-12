#' add_quietly
#'
#' Useful in conjunction with ggplot, as a silent substitute for `+`.
#'
#' @export
add_quietly <- function (...) {
  purrr::pluck(purrr::quietly(add)(...), "result")
}
