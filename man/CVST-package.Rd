\name{CVST-package}
\alias{CVST-package}
\alias{CVST}
\docType{package}
\title{
\packageTitle{CVST}
}
\description{
\packageDescription{CVST}
}
\details{
\packageDESCRIPTION{CVST}
\packageIndices{CVST}
}
\author{
\packageAuthor{CVST}

Maintainer: \packageMaintainer{CVST}
}
\references{
Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential testing.
Journal of Machine Learning Research 16 (2015) 1103-1155.
URL \url{https://jmlr.org/papers/volume16/krueger15a/krueger15a.pdf}.

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
