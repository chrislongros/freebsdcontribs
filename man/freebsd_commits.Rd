\name{freebsd_commits}
\alias{freebsd_commits}
\docType{data}
\title{FreeBSD Individual Commit Timestamps (from git repository)}
\description{
  Every FreeBSD commit with full timestamps and anonymized author IDs.
  Extracted from the cloned git repository.
}
\usage{data(freebsd_commits)}
\format{
  A data frame with 953162 rows and 2 variables:
  \describe{
    \item{timestamp}{POSIXct, commit timestamp in UTC}
    \item{author_id}{character, anonymized 12-character author hash}
  }
}
\source{
  Cloned from \url{https://github.com/freebsd/freebsd-src}
}
\examples{
data(freebsd_commits)
hours <- as.integer(format(freebsd_commits$timestamp, "\%H"))
hist(hours, breaks = 0:24, main = "FreeBSD Commits by Hour of Day",
     xlab = "Hour (UTC)", col = "steelblue")
}
\keyword{datasets}
