% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zero.Profit.MB.R
\name{Zero.Profit.MB}
\alias{Zero.Profit.MB}
\title{Find maximum profit for Pure Bundling strategy}
\usage{
Zero.Profit.MB(r1.r2, p.1.min.max, p.2.min.max, p.b.min.max, c.1, c.2, alfa,
  beta, teta, FC)
}
\arguments{
\item{r1.r2}{NX2 reservation prices of two goods []}

\item{p.1.min.max}{Vector}

\item{p.2.min.max}{Vector}

\item{c.1}{good 1 parameter of production cost}

\item{c.2}{good 1 parameter of production cost}

\item{alfa}{parameter of scale economics alfa = 0 --> CRS, alfa < 0 --> IRS, alfa < 0 --> DRS}

\item{beta}{parameter of sope economics  beta = 0 --> neutral, beta > 0 complementary, beta < 0 substitution}

\item{teta}{parameter of complementary and substitution of goods beta = 0 --> neutral, beta > 0 complementary, beta < 0 substitution}

\item{FC}{fixed Cost of production}

\item{pb.min.max}{Vector}
}
\value{
max.profit
}
\description{
Find maximum profit for Pure Bundling strategy
}
