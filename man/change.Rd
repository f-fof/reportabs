% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/temporal_reporting.R
\name{change}
\alias{change}
\title{Create a string describing whether an indicator has increased or decreased over the year,
or over the previous month}
\usage{
change(
  data,
  filter_with,
  type = "id",
  ym = "year",
  at_year = NULL,
  at_month = NULL
)
}
\arguments{
\item{data}{a dataframe of cleaned ABS Time Series data returned from \code{readabs::read_abs()}}

\item{filter_with}{a list of variables on which to filter the dataframe.}

\item{type}{controls the wording of the text.
Options are 'id' for increased or decreased, "ab" for above or below, "rf" for risen or fallen and "present"
for an increase or a decrease.}

\item{ym}{ym = "year" to calculate the change over the year, or ym = "month" to calculate the change over the month}

\item{at_year}{By default, change() returns the difference over the past 12 months (to the current year). at_year and at_month can
be specified to calculate the change between the current value, and the value as at at_year and at_month.}

\item{at_month}{By default, change() returns the difference over the past 12 months (to the current year). at_year and at_month can
be specified to calculate the change between the current value, and the value as at at_year and at_month.}
}
\value{
character
}
\description{
Create a string describing whether an indicator has increased or decreased over the year,
or over the previous month
}
\examples{
library(reportabs)
labour_force_briefing <- read_absdata("labour_force_briefing")
change(labour_force_briefing,
filter_with = list(indicator = "Employed total", series_type = "Seasonally Adjusted"))
}
