\name{CV}
\alias{CV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Perform a k-fold Cross-validation
}
\description{
  Performs the usual k-fold cross-validation procedure on a given data
  set, parameter grid and learner.
}
\usage{
CV(data, learner, params, fold = 5, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
    The data set as \code{CVST.data} object.
}
  \item{learner}{
    The learner as \code{CVST.learner} object.
}
  \item{params}{
    the parameter grid as \code{CVST.params} object.
}
  \item{fold}{
    The number of folds that should be generated for each set of parameters.
}
  \item{verbose}{
    Should the procedure report the performance for each model?
}
}
\value{
  Returns the optimal parameter settings as determined by k-fold cross-validation.
}
\references{
M. Stone.
Cross-validatory choice and assessment of statistical predictions.
\emph{Journal of the Royal Statistical Society. Series B}, 36(2):111--147, 1974.

Sylvain Arlot, Alain Celisse, and Paul Painleve.
A survey of cross-validation procedures for model selection.
\emph{Statistics Surveys}, 4:40--79, 2010.
}

\author{
Tammo Krueger <tammokrueger@googlemail.com>
}

\seealso{
  \code{\link{fastCV}}
  \code{\link{constructData}}
  \code{\link{constructLearner}}
  \code{\link{constructParams}}
}
\examples{
ns = noisySine(100)
svm = constructSVMLearner()
params = constructParams(kernel="rbfdot", sigma=10^(-3:3), nu=c(0.05, 0.1, 0.2, 0.3))
opt = CV(ns, svm, params)
}
