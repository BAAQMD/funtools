#' Test whether two vectors are equal
#'
#' @param e1 vector
#' @param e2 vector
#' @param na.rm whether to ignore \code{NA}s (default \code{FALSE})
#'
#' @return \code{TRUE} or \code{FALSE} (\code{NA}s will yield \code{FALSE} unless \code{na.rm = TRUE})
#'
#' @examples
#' \dontrun{
#' c("foo", "foo") %>% are_all("foo")
#' }
#' @export
are_all <- function (e1, e2, na.rm = FALSE) {
  isTRUE(all(e1 == e2, na.rm = na.rm))
}
