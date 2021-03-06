% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/min-pos.R
\name{rray_min_pos}
\alias{rray_min_pos}
\title{Locate the position of the minimum value}
\usage{
rray_min_pos(x, axis = NULL)
}
\arguments{
\item{x}{A vector, matrix, array, or rray.}

\item{axis}{A single integer specifying the axis to compute along. \code{1}
computes along rows, reducing the number of rows to 1.
\code{2} does the same, but along columns, and so on for higher dimensions.
The default of \code{NULL} first flattens \code{x} to 1-D.}
}
\value{
An integer object of the same type and shape as \code{x}, except along \code{axis},
which has been reduced to size 1.
}
\description{
\code{rray_min_pos()} returns the integer position of the minimum value over an
axis.
}
\examples{

x <- rray(c(1:10, 20:11), dim = c(5, 2, 2))

# Flatten x, then find the position of the max value
rray_min_pos(x)

# Compute along the rows
rray_min_pos(x, 1)

# Compute along the columns
rray_min_pos(x, 2)

}
