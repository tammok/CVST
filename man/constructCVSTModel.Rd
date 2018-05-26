\name{constructCVSTModel}
\alias{constructCVSTModel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Setup for a CVST Run.
}
\description{
  This is an helper object of type \code{CVST.setup} conatining all
  necessary parameters for a CVST run.
}
\usage{
constructCVSTModel(steps = 10, beta = 0.1, alpha = 0.01,
similaritySignificance = 0.05, earlyStoppingSignificance = 0.05,
earlyStoppingWindow = 3, regressionSimilarityViaOutliers = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{steps}{
    Number of steps CVST should run
  }
\item{beta}{
  Significance level for H0.
}
\item{alpha}{
    Significance level for H1.
}
  \item{similaritySignificance}{
    Significance level of the similarity test.
}
  \item{earlyStoppingSignificance}{
    Significance level of the early stopping test.
}
  \item{earlyStoppingWindow}{
    Size of the early stopping window.
}
  \item{regressionSimilarityViaOutliers}{
    Should the less strict outlier-based similarity measure for
    regression tasks be used.
}
}
\value{
  A \code{CVST.setup} object suitable for \code{\link{fastCV}}.
}

\references{
Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential testing.
Journal of Machine Learning Research 16 (2015) 1103-1155.
URL \url{http://jmlr.org/papers/volume16/krueger15a/krueger15a.pdf}.
}
\author{
Tammo Krueger <tammokrueger@googlemail.com>
}

\seealso{
  \code{\link{fastCV}}
}
