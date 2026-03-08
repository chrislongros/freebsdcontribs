\name{freebsd_contributors_daily}
\alias{freebsd_contributors_daily}
\docType{data}
\title{FreeBSD Phabricator Contributor Growth (Daily)}
\description{
  Daily signup counts for the FreeBSD Phabricator code review platform
  (reviews.freebsd.org). Data is aggregated by day with no personal
  information included. Suitable for time series analysis.
}
\usage{data(freebsd_contributors_daily)}
\format{
  A data frame with 2531 rows and 3 variables:
  \describe{
    \item{date}{Date, the signup date}
    \item{new_contributors}{integer, number of new contributors that day}
    \item{cumulative}{integer, running total of contributors}
  }
}
\source{
  Aggregated from public Phabricator user data at
  \url{https://reviews.freebsd.org}
}
\examples{
data(freebsd_contributors_daily)
plot(freebsd_contributors_daily$date,
     freebsd_contributors_daily$new_contributors,
     type = "h", xlab = "Date", ylab = "New Contributors",
     main = "FreeBSD Daily Contributor Signups")
}
\keyword{datasets}
