% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.R
\name{report_plots}
\alias{report_plots}
\title{Report plots}
\usage{
report_plots(
  summarised_estimates,
  reported,
  target_folder = NULL,
  max_plot = 10
)
}
\arguments{
\item{summarised_estimates}{A data.table of summarised estimates containing the following variables:
variable, median, bottom, and top. It should contain the following estimates: R, infections, reported_cases_rt,
and r (rate of growth).}

\item{reported}{A data.table of reported cases with the following variables: date, confirm.}

\item{target_folder}{Character string specifying where to save results (will create if not present).}

\item{max_plot}{Numeric, defaults to 10. A multiplicative upper bound on the number of cases shown on the plot. Based
on the maximum number of reported cases.}
}
\value{
A \code{ggplot2} object
}
\description{
\lifecycle{questioning}
Returns key summary plots for estimates. May be depreciated in later releases as current S3 methods
are enhanced.
}
\examples{
\donttest{
# define example cases
cases <- example_confirmed[1:40]

# set up example delays
generation_time <- get_generation_time(disease = "SARS-CoV-2", source = "ganyani")
incubation_period <- get_incubation_period(disease = "SARS-CoV-2", source = "lauer")
reporting_delay <- bootstrapped_dist_fit(rlnorm(100, log(6), 1), max_value = 30)
                        
# run model
out <- estimate_infections(cases, samples = 100, 
                           generation_time = generation_time,
                           delays = delay_opts(incubation_period, reporting_delay),
                           rt = NULL)
                            
# plot infections
plots <- report_plots(summarised_estimates = out$summarised,
                      reported = cases)
plots
}
}
