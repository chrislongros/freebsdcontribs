\name{freebsd_daily_authors}
\alias{freebsd_daily_authors}
\docType{data}
\title{FreeBSD Daily New Committers (from git repository)}
\description{
  Daily counts of authors making their first commit to FreeBSD.
  Extracted from the cloned git repository.
}
\usage{data(freebsd_daily_authors)}
\format{
  A data frame with 2041 rows and 3 variables:
  \describe{
    \item{date}{Date, date of first commit}
    \item{new_authors}{integer, new committers that day}
    \item{cumulative_authors}{integer, running total of unique committers}
  }
}
\source{
  Cloned from \url{https://github.com/freebsd/freebsd-src}
}
\examples{
data(freebsd_daily_authors)
plot(freebsd_daily_authors$date, freebsd_daily_authors$cumulative_authors,
     type = "l", xlab = "Date", ylab = "Unique Committers",
     main = "FreeBSD Cumulative Committers")
}
\keyword{datasets}
