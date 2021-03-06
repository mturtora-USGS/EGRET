% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plotQTimeDaily.R
\name{plotQTimeDaily}
\alias{plotQTimeDaily}
\title{Plot of the discharge time series}
\usage{
plotQTimeDaily(eList, startYear = NA, endYear = NA, qLower = NA,
  qUnit = 1, logScale = FALSE, tinyPlot = FALSE, printTitle = TRUE,
  lwd = 3, col = "red", cex.main = 1.2, cex.lab = 1.2,
  customPar = FALSE, prettyDate = TRUE, ...)
}
\arguments{
\item{eList}{named list with at least the Daily and INFO dataframes}

\item{startYear}{numeric indicating the starting year for the graph}

\item{endYear}{numeric indicating the ending year for the graph (should be a time in decimal years that is after the last observations to be plotted)}

\item{qLower}{numeric specifying the lower bound on discharges that are to be plotted, must be in the units specified by qUnit, default is NA (lower bound is zero)}

\item{qUnit}{object of qUnit class. \code{\link{printqUnitCheatSheet}}, or numeric represented the short code, or character representing the descriptive name.  Default is qUnit=1 (cubic feet per second)}

\item{logScale}{logical whether or not to use a log scale in the y axis. Default is FALSE.}

\item{tinyPlot}{logical variable, if TRUE plot is designed to be short and wide, default is FALSE.}

\item{printTitle}{logical variable if TRUE title is printed, if FALSE title is not printed (this is best for a multi-plot figure)}

\item{lwd}{line width, a positive number, defaulting to 1}

\item{col}{specification for the default plotting color}

\item{cex.main}{magnification to be used for main titles relative to the current setting of cex}

\item{cex.lab}{magnification to be used for x and y labels relative to the current setting of cex}

\item{customPar}{logical defaults to FALSE. If TRUE, par() should be set by user before calling this function
(for example, adjusting margins with par(mar=c(5,5,5,5))). If customPar FALSE, EGRET chooses the best margins depending on tinyPlot.}

\item{prettyDate}{logical use 'pretty' limits for date axis if TRUE, or force the startYear/endYear as limits if FALSE}

\item{\dots}{arbitrary graphical parameters that will be passed to genericEGRETDotPlot function (see ?par for options)}
}
\description{
Part of flowHistory component.
Allows discharge record to only show those discharges above a given threshold

 Although there are a lot of optional arguments to this function, most are set to a logical default.

Data come from named list, which contains a Daily dataframe with the daily flow data,
and an INFO dataframe with metadata.
}
\examples{
eList <- Choptank_eList
# Water year:
plotQTimeDaily(eList)
plotQTimeDaily(eList, startYear=1990, endYear=2000,qLower=1500)
plotQTimeDaily(eList, prettyDate=FALSE)
# Graphs consisting of Jun-Aug
eList <- setPA(eList, paStart=6,paLong=3)
plotQTimeDaily(eList)
}
\seealso{
\code{\link{selectDays}}, \code{\link{genericEGRETDotPlot}}
}
\keyword{graphics}
\keyword{streamflow}

