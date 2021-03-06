% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayesProb.R
\name{bayesProb}
\alias{bayesProb}
\title{Calculating mean posterior probability based on the bayes estimating procedure of
quantile regression with asymmetric laplace distribution}
\usage{
bayesProb(y, x, tau, M)
}
\arguments{
\item{y}{dependent variable in quantile regression}

\item{x}{indepdent variables in quantile regression.
Note that: x is the independent variable matrix}

\item{tau}{quantile}

\item{M}{the iteration frequancy for MCMC used in Baysian Estimation}
}
\description{
Calculating mean posterior probability based on the bayes estimating procedure of
quantile regression with asymmetric laplace distribution
}
\details{
If we define the variable Oi, which takes value equal to 1 when ith observation
is an outlier, and 0 otherwise, then we propose to calculate the probability of
an observation being an outlier as:

\deqn{P(O_{i} = 1) = \frac{1}{n-1}\sum{P(v_{i}>v_{j}|data)} \quad (1)}
We believe that for points, which are not outliers, this probability should be
small, possibly close to zero. Given the natrual ordering of the residuals, it is
expected that some observations present greater values for this probability in
comparison to others. What we think that should be deemed as an outlier, ought to
be those observations with a higher \eqn{P(O_{i} = 1)}, and possibly one that is
particularly distant from the others.

The probability in the equation can be approximated given the MCMC draws, as follows

\deqn{P(O_{i}=1)=\frac{1}{M}\sum{I(v^{(l)}_{i}>max v^{k}_{j})}}

where \eqn{M} is the size of the chain of \eqn{v_{i}} after the burn-in period and
\eqn{v^{(l)}_{j}} is the \eqn{l}th draw of chain.
}
\references{
Santos B, Bolfarine H.(2016)``On Baysian quantile regression and
outliers,\emph{arXiv:1601.07344}
}
\seealso{
\code{bayesKL}
}
