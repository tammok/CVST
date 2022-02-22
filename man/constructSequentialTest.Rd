\name{constructSequentialTest}
\alias{constructSequentialTest}
\alias{getCVSTTest}
\alias{testSequence}
\alias{plotSequence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Construct and Handle Sequential Tests.
}
\description{
  These functions handle the construction and calculation with
  sequential tests as introduced by Wald (1947). \code{getCVSTTest}
  constructs a special sequential test as introduced in Krueger
  (2011). \code{testSequence} test a sequence of 0/1 whether it is
  distributed according to H0 or H1.
}
\usage{
constructSequentialTest(piH0 = 0.5, piH1 = 0.9, beta, alpha)
getCVSTTest(steps, beta = 0.1, alpha = 0.01)
testSequence(st, s)
plotSequence(st, s)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{piH0}{
    Probability of the binomial distribution for H0.
}
\item{piH1}{
  Probability of the binomial distribution for H1.
}
\item{beta}{
  Significance level for H0.
}
\item{alpha}{
    Significance level for H1.
}
\item{steps}{
  Number of steps the CVST procedure should be executed.
}
\item{st}{
  A sequential test of type \code{CVST.sequentialTest}.
}
  \item{s}{
    A sequence of 0/1 values.
}
}
\value{
  \code{constructSequentialTest} and \code{getCVSTTest} return a
  \code{CVST.sequentialTest} with the specified
  properties. \code{testSequence} returns 1, if H1 can be expected, -1
  if H0 can be accepted, and 0 if the test needs more data for a
  decission. \code{plotSequence} gives a graphical impression of the
  this testing procedure.
}
\references{
Abraham Wald.
\emph{Sequential Analysis}.
Wiley, 1947.

Tammo Krueger, Danny Panknin, and Mikio Braun.
Fast cross-validation via sequential testing.
Journal of Machine Learning Research 16 (2015) 1103-1155.
URL \url{https://jmlr.org/papers/volume16/krueger15a/krueger15a.pdf}.
}
\author{
Tammo Krueger <tammokrueger@googlemail.com>
}

\seealso{
  \code{\link{fastCV}}
}
\examples{
st = getCVSTTest(10)
s = rbinom(10,1, .5)
plotSequence(st, s)
testSequence(st, s)
}
