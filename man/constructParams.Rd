\name{constructParams}
\alias{constructParams}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Construct a Grid of Parameters
}
\description{
  This is a helper function which, geiven a named list of parameter
  choices, expand the complete grid and returns a \code{CVST.params}
  object suitable for \code{\link{CV}} and \code{\link{fastCV}}.
}
\usage{
constructParams(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
    The parameters that should be expanded.
}
}
\value{
  Returns a \code{CVST.params} wich is basically a named list of
  possible parameter vallues.
}

\author{
Tammo Krueger <tammokrueger@googlemail.com>
}

\seealso{
  \code{\link{fastCV}}
}
\examples{
params = constructParams(kernel="rbfdot", sigma=10^(-1:5), nu=c(0.1, 0.2))
# the expanded grid contains 14 parameter lists:
length(params)
}
