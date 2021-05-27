#' @importFrom dplyr progress_estimated
#' @importFrom purrr map
progressively_map <- function (df, fun, ...) {
  pb <- dplyr::progress_estimated(n = nrow(df))
  f <- function (..., .pb = NULL) {
    if ((!is.null(.pb)) && (.pb$i < .pb$n)) .pb$tick()$print()
    return(fun(...))
  }
  result_list <- purrr::map(split(df, 1:nrow(df)), f, ..., .pb = pb)
  return(result_list)
}
