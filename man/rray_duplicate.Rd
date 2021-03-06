% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/duplicate.R
\name{rray_duplicate}
\alias{rray_duplicate}
\alias{rray_duplicate_any}
\alias{rray_duplicate_detect}
\alias{rray_duplicate_id}
\title{Find duplicated values in an array}
\usage{
rray_duplicate_any(x, axes = NULL)

rray_duplicate_detect(x, axes = NULL)

rray_duplicate_id(x, axes = NULL)
}
\arguments{
\item{x}{A vector, matrix, array, or rray.}

\item{axes}{An integer vector. The default of \code{NULL} looks for duplicates
over all axes.}
}
\value{
See the description for return value details.
}
\description{
\itemize{
\item \code{rray_duplicate_any()}: returns a logical with the same shape and type
as \code{x} except over the \code{axes}, which will be reduced to length 1. This
function detects the presence of any duplicated values along the \code{axes}.
\item \code{rray_duplicate_detect()}: returns a logical with the same shape and
type as \code{x} describing if that element of \code{x} is duplicated elsewhere.
\item \code{rray_duplicate_id()}: returns an integer with the same shape and
type as \code{x} giving the location of the first occurrence of the value.
}
}
\examples{
x <- rray(c(1, 1, 2, 2), c(2, 2))
x <- rray_set_row_names(x, c("r1", "r2"))
x <- rray_set_col_names(x, c("c1", "c2"))

# Are there duplicates along the rows?
rray_duplicate_any(x, 1L)

# Are there duplicates along the columns?
rray_duplicate_any(x, 2L)

# Create a 3d version of x
# where the columns are not unique
y <- rray_expand(x, 1)

# Along the rows, all the values are unique...
rray_duplicate_any(y, 1L)

# ...but along the columns there are duplicates
rray_duplicate_any(y, 2L)

# ---------------------------------------------------------------------------

z <- rray(c(1, 1, 2, 3, 1, 4, 5, 6), c(2, 2, 2))

# rray_duplicate_detect() looks for any
# duplicates along the axes of interest
# and returns `TRUE` wherever a duplicate is found
# (including the first location)
rray_duplicate_detect(z, 1)

# Positions 1 and 5 are the same!
rray_duplicate_detect(z, 3)

# ---------------------------------------------------------------------------

# rray_duplicate_id() returns the location
# of the first occurance along each axis.
# Compare to rray_duplicate_detect()!
rray_duplicate_detect(z, 1)
rray_duplicate_id(z, 1)

}
\seealso{
\code{\link[=rray_unique]{rray_unique()}} for functions that work with the dual of duplicated values:
unique values.

\code{\link[vctrs:vec_duplicate_any]{vctrs::vec_duplicate_any()}} for functions that detect duplicates among
any type of vector object.
}
