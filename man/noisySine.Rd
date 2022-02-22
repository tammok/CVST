\name{noisySine}
\alias{noisySine}
\alias{noisySinc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Regression and Classification Toy Data Set
}
\description{
  Regression and Classification Toy Data Set based on the sine and sinc function.
}
\usage{
noisySine(n, dim = 5, sigma = 0.25)
noisySinc(n, dim = 2, sigma = 0.1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
    Number of data points that should be generated.
}
  \item{dim}{
    Intrinsic dimensionality of the data set (see references for details).
}
  \item{sigma}{
    Standard deviation of the noise component.
}
}
\value{
  Returns a data set of type CVST.data
}
\references{
Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential testing.
Journal of Machine Learning Research 16 (2015) 1103-1155.
URL \url{https://jmlr.org/papers/volume16/krueger15a/krueger15a.pdf}.
}
\author{
Tammo Krueger <tammokrueger@googlemail.com>
}

\seealso{
  \code{\link{constructData}}
}
\examples{
nsine = noisySine(1000)
plot(nsine, col=nsine$y)
nsinc = noisySinc(1000)
plot(nsinc)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datasets}
