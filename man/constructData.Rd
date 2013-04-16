\name{constructData}
\alias{constructData}
\alias{getN}
\alias{getSubset}
\alias{getX}
\alias{shuffleData}
\alias{isClassification}
\alias{isRegression}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Construction and Handling of \code{CVST.data} Objects
}
\description{
  The CVST methods needs a structured interface to both regression and
  classification data sets. These helper methods allow the construction
  and consistence handling of these types of data sets.
}
\usage{
constructData(x, y)
getN(data)
getSubset(data, subset)
getX(data, subset = NULL)
shuffleData(data)
isClassification(data)
isRegression(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    The feature data as vector or matrix.
}
  \item{y}{
    The observed values (regressands/labels) as list, vector or factor.
}
  \item{data}{
    A \code{CVST.data} object generated via \code{constructData}.
}
\item{subset}{
  A index set.
}

}
\value{
  \code{constructData} returns a \code{CVST.data} object. \code{getN}
  returns the number of data points in the data set. \code{getSubset}
  returns a subset of the data as a \code{CVST.data} object, while
  \code{getX} just return the feature data. \code{shuffleData} returns a
  randomly shuffled instance of the data.
}
\author{
Tammo Krueger <tammokrueger@googlemail.com>
}
\examples{
nsine = noisySine(10)
isClassification(nsine)
isRegression(nsine)
getN(nsine)
getX(nsine)
nsineShuffeled = shuffleData(nsine)
getX(nsineShuffeled)
getSubset(nsineShuffeled, 1:3)
}
