#' pmean
#'
#' Compute means across vectors (similar to `pmax` or `pmin`). Lazy evaluation meas this will work inside a `dplyr::mutate()`.
#'
#' @param ... one or more vectors
#' @param na.rm passed to `mean()`
#'
#' @return double precision
#'
#' @export
pmean <- function (..., na.rm = TRUE) {
  dots <- lazyeval::lazy_dots(...)
  args <- lazyeval::lazy_eval(dots)
  f <- function (...) base::mean(c(...), na.rm = na.rm)
  purrr::pmap_dbl(args, f)
}
