#' Combine R Objects by Rows
#'
#' @param .x a list of rbind-able objects
#' @seealso `base::rbind` `purrr::lift_dl`
#'
#' @examples
#' x <- list(mtcars, mtcars, mtcars)
#' rbind_list(x)
#'
#' @export
rbind_list <-
  purrr::lift_dl(rbind)
