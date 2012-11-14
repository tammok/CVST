\name{cochranq.test}
\alias{cochranq.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Cochran's Q Test with Permutation
}
\description{
  Performs the Cochran's Q test on the data. If the data matrix contains
  too few elements, the chisquare distribution of the test statistic is
  replaced by a permutation variant.
}
\usage{
cochranq.test(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
    The data matrix with the individuals in the rows and treatments in the columns.
}
}
\value{
  Returns a \code{htest} object with the usual entries.
}
\references{
W. G. Cochran.
The comparison of percentages in matched samples.
\emph{Biometrika}, 37 (3-4):256--266, 1950.

Kashinath D. Patil.
Cochran's Q test: Exact distribution.
\emph{Journal of the American Statistical Association}, 70 (349):186--189, 1975.

Merle W. Tate and Sara M. Brown.
Note on the {Cochran Q} test.
\emph{Journal of the American Statistical Association}, 65 (329):155--160, 1970.
}
\author{
Tammo Krueger <t.krueger@tu-berlin.de>
}

\examples{
mat = matrix(c(rep(0, 10), 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1), ncol=4)
cochranq.test(mat)
mat = matrix(c(rep(0, 7), 1, rep(0, 12), 1, 1, 0, 1, rep(0, 5), 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1), nrow=8)
cochranq.test(mat)
}
