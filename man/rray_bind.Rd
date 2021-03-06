% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bind.R
\name{rray_bind}
\alias{rray_bind}
\alias{rray_rbind}
\alias{rray_cbind}
\title{Combine many arrays together into one array}
\usage{
rray_bind(..., .axis)

rray_rbind(...)

rray_cbind(...)
}
\arguments{
\item{...}{Vectors, matrices, arrays, or rrays.}

\item{.axis}{A single integer. The axis to bind along.}
}
\value{
An array, or rray, depending on the input.
}
\description{
These functions bind multiple vectors, matrices, arrays, or rrays together
into one, combining along the \code{.axis}.
}
\details{
\code{rray_bind()} is extremely flexible. It uses broadcasting to combine
arrays together in a way that the native functions of \code{cbind()} and \code{rbind()}
cannot. See the examples section for more explanation!
}
\examples{
# ---------------------------------------------------------------------------
a <- matrix(1:4, ncol = 2)
b <- matrix(5:6, ncol = 1)

# Bind along columns
rray_bind(a, b, .axis = 2)

# Bind along rows
# Broadcasting is done automatically
rray_bind(a, b, .axis = 1)

# Notice that this is not possible with rbind()!
try(rbind(a, b))

# You can bind "up" to a new dimension
# to stack matrices into an array
rray_bind(a, b, .axis = 3)

# ---------------------------------------------------------------------------
# Dimension name example

x <- matrix(
 1:6,
 ncol = 3,
 dimnames = list(c("a_r1", "a_r2"), c("a_c1", "a_c2", "a_c3"))
)

y <- matrix(
 7:8,
 ncol = 1,
 dimnames = list(NULL, c("b_c1"))
)

# Dimension names come along for the ride
# following rray name handling
rray_bind(x, y, .axis = 2)

# If some inputs are named, and others
# are not, the non-named inputs get `""`
# as names
rray_bind(x, y, .axis = 1)

# You can add "outer" names to the
# axis you are binding along.
# They are added to existing names with `..`
rray_bind(outer = x, y, .axis = 2)

# Outer names can be used to give unnamed
# inputs default names
rray_bind(outer = x, outer_y = y, .axis = 1)

}
