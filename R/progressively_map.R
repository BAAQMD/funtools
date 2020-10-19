progressively_map <- function (df, fun, ...) {
  pb <- progress_estimated(n = nrow(df))
  f <- function (..., .pb = NULL) {
    if ((!is.null(.pb)) && (.pb$i < .pb$n)) .pb$tick()$print()
    return(fun(...))
  }
  result_list <- map(split(df, 1:nrow(df)), f, ..., .pb = pb)
  return(result_list)
}
