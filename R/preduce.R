#' Parallel reduce
#'
#' @param .x see [reduce]
#' @param .f see [reduce]
#' @param ... see [reduce]
#' @param .init see [reduce]
#' @param dir see [reduce]
#'
#' @examples
#' X <- mtcars[, c("cyl", "mpg")]
#' preduce(X, sum)
#'
#' @export
preduce <- function (.x, .f, ...) {
  transposed <- as.data.frame(t(.x))
  reducer <- function (x, ...) reduce(x, .f = .f, ...)
  reduced <- map(transposed, reducer)
  restored <- unname(unlist(t(reduced)))
  return(restored)
}

