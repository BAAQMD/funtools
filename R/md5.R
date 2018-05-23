#' Calculate the MD5 digest of an object
#'
#' @param x any R object
#' @param \dots further arguments to \code{digest::digest}
#'
#' @return MD5 digest (a.k.a. hash) of \code{x}
#' @importFrom digest digest
#'
#' @export
md5 <- function (x, ...) {
  digest::digest(x, algo = "md5", ...)
}
