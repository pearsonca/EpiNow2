% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map.R
\name{theme_map}
\alias{theme_map}
\title{Custom Map Theme}
\usage{
theme_map(
  map = NULL,
  continuous = FALSE,
  variable_label = NULL,
  trans = "identity",
  fill_labels = NULL,
  scale_fill = NULL,
  breaks = NULL,
  ...
)
}
\arguments{
\item{map}{\code{ggplot2} map object}

\item{continuous}{Logical defaults to \code{FALSE}. Is the fill variable continuous.}

\item{variable_label}{A character string indicating the variable label to use. If not supplied then the underlying
variable name is used.}

\item{trans}{A character string specifying the transform to use on the specified metric. Defaults to no
transform ("identity"). Other options include log scaling ("log") and log base 10 scaling
("log10"). For a complete list of options see \code{ggplot2::continous_scale}.}

\item{fill_labels}{A function to use to allocate legend labels. An example (used below) is \code{scales::percent},
which can be used for percentage data.}

\item{scale_fill}{Function to use for scaling the fill. Defaults to a custom \code{ggplot2::scale_fill_manual}, which
expects the possible values to be "Increasing", "Likely increasing", "Likely decreasing", "Decreasing" or "Unsure".}

\item{breaks}{Breaks to use in legend. Defaults to \code{ggplot2::waiver}.}

\item{...}{Additional arguments passed to the \code{scale_fill} function}
}
\value{
A \code{ggplot2} object
}
\description{
\lifecycle{questioning}
Applies a custom map theme to be used with \code{global_map}, \code{country_map}, and other \code{ggplot2} maps. Status of
this function is currently questioning as it is uncertain if it is in use. Future releases may depreciate it.
}
