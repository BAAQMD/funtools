#' Parallel reduce
#'
#' @param .x see [reduce]
#' @param .f see [reduce]
#' @param ... see [reduce]
#'
#' @importFrom purrr reduce
#'
#' @examples
#' X <- mtcars[, c("cyl", "mpg")]
#' preduce(X, sum)
#'
#' @export
preduce <- function (.x, .f, ...) {
  transposed <- as.data.frame(t(.x))
  reducer <- function (x, ...) purrr::reduce(x, .f = .f, ...)
  reduced <- purrr::map(transposed, reducer)
  restored <- unname(unlist(t(reduced)))
  return(restored)
}

