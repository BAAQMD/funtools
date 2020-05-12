#' Combine R Objects by Rows
#'
#' @param .x a list of rbind-able objects
#' @param ... passed to [rbind()]
#'
#' @seealso `base::rbind` `purrr::lift_dl`
#'
#' @examples
#' x <- list(mtcars, mtcars, mtcars)
#' rbind_list(x)
#'
#' @export
rbind_list <-
  purrr::lift_dl(
    base::rbind)
