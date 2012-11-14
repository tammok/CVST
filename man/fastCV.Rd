\name{fastCV}
\alias{fastCV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  The Fast Cross-Validation via Sequential Testing (CVST) Procedure
}
\description{
  CVST is an improved cross-validation procedure which uses non-parametric
  testing coupled with sequential analysis to determine the best
  parameter set on linearly increasing subsets of the data. By
  eliminating underperforming candidates quickly and keeping promising
  candidates as long as possible, the method speeds up the computation
  while preserving the capability of a full cross-validation.  
}
\usage{
fastCV(train, learner, params, setup, test = NULL, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
    The data set as \code{CVST.data} object.
}
  \item{learner}{
    The learner as \code{CVST.learner} object.
}
  \item{params}{
    the parameter grid as \code{CVST.params} object.
}
  \item{setup}{
    A \code{CVST.setup} object containing the necessary parameter for
    the CVST procedure.
}
  \item{test}{
    An independent test set that should be used at each step. If
    \code{NULL} then the remaining data after learning a model
    at each step is used instead.
}
  \item{verbose}{
    Should the procedure report the performance after each step?
}
}
\value{
  Returns the optimal parameter settings as determined by fast
  cross-validation via sequential testing.
}
\references{
Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential analysis.
\emph{Neural Information Processing Systems (NIPS), Big Learning
  Workshop}, 2011.
URL \url{http://biglearn.org/2011/index.php/Papers\#paper2}.
  
Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential testing.
\emph{CoRR}, abs/1206.2248, 2012.
URL \url{http://arxiv.org/abs/1206.2248}.
}
\author{
Tammo Krueger <t.krueger@tu-berlin.de>
}
\seealso{
  \code{\link{CV}}
  \code{\link{constructCVSTModel}}
  \code{\link{constructData}}
  \code{\link{constructLearner}}
  \code{\link{constructParams}}
}
\examples{
ns = noisySine(100)
svm = constructSVMLearner()
params = constructParams(kernel="rbfdot", sigma=10^(-3:3), nu=c(0.05, 0.1, 0.2, 0.3))
opt = fastCV(ns, svm, params, constructCVSTModel())
}
