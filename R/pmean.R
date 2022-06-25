#' pmean
#'
#' Compute means across vectors (similar to `pmax` or `pmin`). Lazy evaluation meas this will work inside a `dplyr::mutate()`.
#'
#' @param ... one or more vectors
#' @param na.rm passed to `mean()`
#'
#' @return double precision
#'
#' @importFrom lazyeval lazy_dots lazy_eval
#' @importFrom purrr pmap_dbl
#'
#' @export
pmean <- function (..., na.rm = TRUE) {
  dots <- lazyeval::lazy_dots(...)
  args <- lazyeval::lazy_eval(dots)
  f <- function (...) base::mean(c(...), na.rm = na.rm)
  purrr::pmap_dbl(args, f)
}

#' papply
#'
#' Compute a function across vectors (similar to `pmax` or `pmin`).
#' Lazy evaluation meas this will work inside a `dplyr::mutate()`.
#'
#' @param ... one or more vectors
#' @param .fun (function) must return a single numeric result
#' @param na.rm passed to `.fun`
#'
#' @return double precision
#'
#' @importFrom lazyeval lazy_dots lazy_eval
#' @importFrom purrr pmap_dbl
#'
#' @export
papply <- function (..., .fun, na.rm = TRUE) {
  dots <- lazyeval::lazy_dots(...)
  args <- lazyeval::lazy_eval(dots)
  f <- function (...) .fun(c(...), na.rm = na.rm)
  purrr::pmap_dbl(args, f)
}
