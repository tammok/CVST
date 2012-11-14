\name{constructLearner}
\alias{constructLearner}
\alias{constructKlogRegLearner}
\alias{constructKRRLearner}
\alias{constructSVMLearner}
\alias{constructSVRLearner}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Construction of Specific Learners for CVST
}
\description{
  These methods construct a \code{CVST.learner} object suitable for the
  CVST method. These objects provide the common interface needed for the
  \code{\link{CV}} and \code{\link{fastCV}} methods. We provide kernel
  logistic regression, kernel ridge regression, support vector machines
  and support vector regression as fully functional implementation templates.
}
\usage{
constructLearner(learn, predict)
constructKlogRegLearner()
constructKRRLearner()
constructSVMLearner()
constructSVRLearner()
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{learn}{
    The learning methods which takes a \code{CVST.data} and list of
    parameters and return a model.
}
\item{predict}{
  The prediction method which takes a model and \code{CVST.data} and
  returns the corresponding predictions.
}
}
\details{
  The nu-SVM and nu-SVR are build on top the corresponding implementations of
  the \code{kernlab} package (see reference). In the list of parameters these
  implementations expect an entry named \code{kernel}, which gives the
  name of the kernel that should be used, an entry named \code{nu}
  specifying the nu parameter, and an entry named \code{C} giving the C
  parameter for the nu-SVR.

  The KRR and KLR also expect \code{kernel} and necessary other
  parameters to construct the kernel. Both methods expect a lambda
  parameter and KLR additonally a tol and maxiter parameter in the
  parameter list.
}
\value{
  Returns a learner of type \code{CVST.learner} suitable for \code{\link{CV}} and \code{\link{fastCV}}.
}
\references{
  Alexandros Karatzoglou, Alexandros Smola, Kurt Hornik, Achim Zeileis.
  kernlab - An S4 Package for Kernel Methods in R
  \emph{Journal of Statistical Software} Vol. 11, Issue 9, Nov 2004.
  URL: \url{http://www.jstatsoft.org/v11/i09}.
  
  Volker Roth.
  Probabilistic discriminative kernel classifiers for multi-class problems.
  In \emph{Proceedings of the 23rd DAGM-Symposium on Pattern Recognition}, pages 246--253, 2001.
}
\author{
  Tammo Krueger <t.krueger@tu-berlin.de>
}

\seealso{
  \code{\link{CV}}
  \code{\link{fastCV}}
}
\examples{
# SVM
ns = noisySine(100)
svm = constructSVMLearner()
p = list(kernel="rbfdot", sigma=100, nu=.1)
m = svm$learn(ns, p)
nsTest = noisySine(1000)
pred = svm$predict(m, nsTest)
sum(pred != nsTest$y) / getN(nsTest)
# Kernel logistic regression
klr = constructKlogRegLearner()
p = list(kernel="rbfdot", sigma=100, lambda=.1, tol=10e-6, maxiter=100)
m = klr$learn(ns, p)
pred = klr$predict(m, nsTest)
sum(pred != nsTest$y) / getN(nsTest)
# SVR
ns = noisySinc(100)
svr = constructSVRLearner()
p = list(kernel="rbfdot", sigma=100, nu=.1, C=1)
m = svr$learn(ns, p)
nsTest = noisySinc(1000)
pred = svr$predict(m, nsTest)
sum((pred - nsTest$y)^2) / getN(nsTest)
# Kernel ridge regression
krr = constructKRRLearner()
p = list(kernel="rbfdot", sigma=100, lambda=.1)
m = krr$learn(ns, p)
pred = krr$predict(m, nsTest)
sum((pred - nsTest$y)^2) / getN(nsTest)
}
