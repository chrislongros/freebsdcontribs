\name{freebsd_daily_commits}
\alias{freebsd_daily_commits}
\docType{data}
\title{FreeBSD Daily Commit Activity (from git repository)}
\description{
  Daily commit counts extracted from the cloned FreeBSD git repository.
  Covers every commit from 1993 to 2026.
}
\usage{data(freebsd_daily_commits)}
\format{
  A data frame with 11882 rows and 3 variables:
  \describe{
    \item{date}{Date, commit date}
    \item{commits}{integer, commits that day}
    \item{cumulative_commits}{integer, running total}
  }
}
\source{
  Cloned from \url{https://github.com/freebsd/freebsd-src}
}
\examples{
data(freebsd_daily_commits)
plot(freebsd_daily_commits$date, freebsd_daily_commits$cumulative_commits,
     type = "l", xlab = "Date", ylab = "Total Commits",
     main = "FreeBSD Cumulative Commits")
}
\keyword{datasets}
