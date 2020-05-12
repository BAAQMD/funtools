#' not_in
#'
#' Value matching
#'
#' @param x vector
#' @param table vector
#'
#' @rdname not_in
#'
#' @export
`%not_in%` <- function (x, table) {
  i <- (x %in% table)
  return(!i)
}
