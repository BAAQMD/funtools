% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rbind_list.R
\name{rbind_list}
\alias{rbind_list}
\title{Combine R Objects by Rows}
\usage{
rbind_list(.x = list(), ...)
}
\arguments{
\item{.x}{a list of rbind-able objects}

\item{...}{passed to [rbind()]}
}
\description{
Combine R Objects by Rows
}
\examples{
x <- list(mtcars, mtcars, mtcars)
rbind_list(x)

}
\seealso{
`base::rbind` `purrr::lift_dl`
}
