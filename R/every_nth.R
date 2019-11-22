#' @export
every_nth <- function (x, n) {
  i <- seq(1, length(x), by = n)
  return(x[i])
}
