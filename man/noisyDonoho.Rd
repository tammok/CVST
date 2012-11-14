\name{noisyDonoho}
\alias{noisyDonoho}
\alias{heavisine}
\alias{doppler}
\alias{bumps}
\alias{blocks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Generate Donoho's Toy Data Sets 
}
\description{
  This function allows to generate noisy variants of the toy signals
  introduced by Donoho (see reference section). The scaling is chosen to
  reflect the setting as discussed in the original paper.
}
\usage{
noisyDonoho(n, fun = doppler, sigma = 1)
blocks(x, scale = 3.656993)
bumps(x, scale = 10.52884)
doppler(x, scale = 24.22172)
heavisine(x, scale = 2.356934)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
    Number of data points that should be generated.
}
  \item{fun}{
    Function to use to generate the data.
}
  \item{sigma}{
    Standard deviation of the noise component.
}
   \item{x}{
    Number of data points that should be generated.  
}
  \item{scale}{
    Scaling parameter.
}
}
\value{
  Returns a data set of type CVST.data
}
\references{
David L. Donoho and Jain M. Johnstone.
Ideal spatial adaptation by wavelet shrinkage.
\emph{Biometrika}, 81 (3) 425--455, 1994.
}
\author{
Tammo Krueger <t.krueger@tu-berlin.de>
}

\seealso{
  \code{\link{constructData}}
}
\examples{
bumpsSet = noisyDonoho(1000, fun=bumps)
plot(bumpsSet)
dopplerSet = noisyDonoho(1000, fun=doppler)
plot(dopplerSet)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datasets}
