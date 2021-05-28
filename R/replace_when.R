#' replace_when
#'
#' Replace elements of `x` indexed by `cond` with values corresponding to `expr`.
#'
#' `foo %>% replace_when(..., bar)` is equivalent to `if_else(with(foo, cond), foo, with(foo, bar))`
#' @param x as in `replace()`
#' @param cond (logical) evaluated in context of `x`
#' @param expr (logical) evaluated in context of `x`
#'
#' @return (possibly modified) copy of `x`
#'
#' @export
replace_when <- function (
  x,
  cond,
  expr
) {

  # q_cond <- rlang::enquo(cond)
  # i <- rlang::eval_tidy(q_cond)
  #
  # q_expr <- rlang::as_quosure(expr)
  # replacement <- rlang::eval_tidy(q_expr)

  replaced <- dplyr::if_else(cond, x, expr)
  return(replaced)

}
