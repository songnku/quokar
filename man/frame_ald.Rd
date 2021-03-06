% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame_ald.R
\name{frame_ald}
\alias{frame_ald}
\title{Density function plot for quantile regression fitting using
Asymmetric Laplace Distribution}
\usage{
frame_ald(y, x, tau, smooth, error, iter)
}
\arguments{
\item{y}{vector, dependent variable of quantile regression}

\item{x}{matrix, matrix consisted independent variables of quantie
regression}

\item{tau}{sigle number or vector, quantiles}

\item{smooth}{sigular, default is 100, the larger the smoother of
density function}

\item{error}{the convergence maximum error}

\item{iter}{maximum iterations of the EM algorithm}
}
\description{
density function used in quantile regression fitting
}
\examples{
library(ggplot2)
data(ais)
x <- matrix(ais$LBM, ncol = 1)
y <- ais$BMI
tau = c(0.1, 0.5, 0.9)
ald_data <- frame_ald(y, x, tau, smooth = 10, error = 1e-6,
                  iter = 2000)
ggplot(ald_data) +
   geom_line(aes(x = r, y = d, group = obs, colour = tau_flag)) +
   facet_wrap(~tau_flag, ncol = 1) +
   xlab('') +
   ylab('Asymmetric Laplace Distribution Density Function')

}
