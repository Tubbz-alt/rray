% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dim-n.R
\name{rray_dim_n}
\alias{rray_dim_n}
\title{Compute the number of dimensions of an object}
\usage{
rray_dim_n(x)
}
\arguments{
\item{x}{An object.}
}
\value{
An integer vector containing the number of dimensions of \code{x}.
}
\description{
\code{rray_dim_n()} computes the dimensionality (i.e. the number of dimensions).
}
\details{
One point worth mentioning is that \code{rray_dim_n()} is very strict. It does
not simply call the generic function \code{dim()} and then check the length.
Rather, it explicitly pulls the attribute for the \code{"dim"}, and checks
the length of that. If an object does not have an attribute, then the
dimensionality is 1.

This means that data frames have a dimensionality of 1, even though
\code{dim()} defines a method for data frames that would imply a dimensionality
of 2.
}
\examples{
x_1_by_4 <- rray(c(1, 2, 3, 4), c(1, 4))

rray_dim_n(x_1_by_4)

# NULL has a dimensionality of 1
rray_dim_n(NULL)

# The dimensionality of a data frame is 1
rray_dim_n(data.frame())

}
