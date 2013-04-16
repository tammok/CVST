\name{CVST-package}
\alias{CVST-package}
\alias{CVST}
\docType{package}
\title{
Fast Cross-Validation via Sequential Testing
}
\description{
  This package implements the fast cross-validation via sequential
  testing (CVST) procedure. CVST is an improved cross-validation procedure which uses non-parametric
  testing coupled with sequential analysis to determine the best
  parameter set on linearly increasing subsets of the data. By
  eliminating underperforming candidates quickly and keeping promising
  candidates as long as possible, the method speeds up the computation
  while preserving the capability of a full cross-validation.
  Additionally to the CVST the package contains an implentation of the
  ordinary k-fold cross-validation with a flexible and powerful set of
  helper objects and methods to handle the overall model selection
  process. The implementations of the Cochran's Q test with permutations and
  the sequential testing framework of Wald are generic and can therefore
  also be used in other contexts.
}
\details{
\tabular{ll}{
Package: \tab CVST\cr
Type: \tab Package\cr
Version: \tab 0.2\cr
Date: \tab 2013-03-25\cr
License: \tab GPL (>=2.0)\cr
}
}
\author{Tammo Krueger, Mikio Braun

Maintainer: Tammo Krueger <tammokrueger@googlemail.com>
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

Abraham Wald.
\emph{Sequential Analysis}.
Wiley, 1947.

W. G. Cochran.
The comparison of percentages in matched samples.
\emph{Biometrika}, 37 (3-4):256--266, 1950.

M. Friedman.
The use of ranks to avoid the assumption of normality implicit in the analysis of variance.
\emph{Journal of the American Statistical Association}, 32 (200):675--701, 1937.

}
\keyword{ package }
\examples{
ns = noisySine(100)
svm = constructSVMLearner()
params = constructParams(kernel="rbfdot", sigma=10^(-3:3), nu=c(0.05, 0.1, 0.2, 0.3))
opt = fastCV(ns, svm, params, constructCVSTModel())
}
