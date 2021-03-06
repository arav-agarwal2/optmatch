% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/InfinitySparseMatrix.R, R/Ops.optmatch.dlist.R
\docType{methods}
\name{subdim}
\alias{subdim}
\alias{subdim.InfinitySparseMatrix}
\alias{subdim.matrix}
\alias{subdim.BlockedInfinitySparseMatrix}
\alias{subdim.optmatch.dlist}
\title{Returns the dimension of each valid subproblem}
\usage{
subdim(x)

\method{subdim}{InfinitySparseMatrix}(x)

\method{subdim}{matrix}(x)

\method{subdim}{BlockedInfinitySparseMatrix}(x)

\method{subdim}{optmatch.dlist}(x)
}
\arguments{
\item{x}{A distance specification to get the sub-dimensions of.}
}
\value{
A data frame listing the dimensions of each valid subproblem. Any subproblems with 0 controls
or 0 treatments will be ignored. The names of the entries in the list will be the names of the
subproblems, if they exist.  There will be two rows, named "treatments" and "controls".
}
\description{
Returns a list containing the dimensions of all valid subproblems.
}
\examples{
em <- exactMatch(pr ~ pt, data=nuclearplants)
m1 <- fullmatch(pr ~ t1 + t2, within=em, data=nuclearplants)
stratumStructure(m1)
(subdims_em <- subdim(em))
m2 <- fullmatch(pr ~ t1 + t2, within=em, data=nuclearplants,
                mean.controls=pmin(1.5, subdims_em["controls",] / subdims_em["treatments",])
                )
stratumStructure(m2)
                
}
