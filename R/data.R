#' FreeBSD Phabricator Contributor Growth Statistics
#'
#' Monthly signup counts for the FreeBSD Phabricator code review platform
#' (reviews.freebsd.org). Data is aggregated by month with no personal
#' information included.
#'
#' @format A data frame with 147 rows and 3 variables:
#' \describe{
#'   \item{month}{Date, first day of each month}
#'   \item{new_contributors}{integer, number of new contributors that month}
#'   \item{cumulative}{integer, running total of contributors}
#' }
#' @source Aggregated from public Phabricator user data at
#'   \url{https://reviews.freebsd.org}
"freebsd_contributors"
