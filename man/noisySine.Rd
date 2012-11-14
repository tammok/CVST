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
