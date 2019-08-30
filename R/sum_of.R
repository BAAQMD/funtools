#' Parallel sum, with tidyselect
#'
#' @examples
#' library(dplyr)
#' mutate(mtcars, foo := sum_of(cyl, mpg))
#'
#' @export
sum_of <- function (...) {
  #sum_vars <- tidyselect::vars_select(names(.data), ...)
  #selected <- select(.data, sum_vars)
  #return(NULL
  lst <- list(...)
  transposed <- t(lst)
  reduced <- pmap(transposed, sum)
  restored <- unlist(t(reduced))
  return(restored)
}

mutate(iris, foo = sum_of(Sepal.Length, Sepal.Width))
mutate(iris, foo = sum_of(vars(matches("Sepal"))))
#mtcars %>% mutate(foo := sum_of(cyl, mpg))
