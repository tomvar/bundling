% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Prices.MB.R
\name{Prices.MB}
\alias{Prices.MB}
\title{This function creates a vector of combination from sequences of prices p.1, p.2 and pb
It will be searched to find prices that maximize profits in MB strategy}
\usage{
Prices.MB(p.1.min.max, p.2.min.max, p.b.min.max, step)
}
\arguments{
\item{p.1.min.max}{Minimum and maximum value of price p1 [p.1.min.max <- c(p.1.min, p.1.max)]}

\item{p.2.min.max}{Minimum and maximum value of price p2 [p.2.min.max <- c(p.2.min, p.2.max)]}

\item{step}{Increment of the sequences}

\item{pb.min.max}{Minimum and maximum value of price of bundle [pb.min.max <- c(pb.min, pb.max)]}
}
\value{
A vector of all possible combinations of p.1, p.2 and pb from sequences of prices:
(from p.1.min, p.1.max by step),
(from p.2.min, p.2.max by step),
(from pb.min to pb.max by step).
}
\description{
This function creates a vector of combination from sequences of prices p.1, p.2 and pb
It will be searched to find prices that maximize profits in MB strategy
}
