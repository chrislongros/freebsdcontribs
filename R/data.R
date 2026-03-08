#' FreeBSD Phabricator Contributor Growth (Monthly)
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

#' FreeBSD Phabricator Contributor Growth (Daily)
#'
#' Daily signup counts for the FreeBSD Phabricator code review platform
#' (reviews.freebsd.org). Data is aggregated by day with no personal
#' information included. Suitable for time series analysis.
#'
#' @format A data frame with 2531 rows and 3 variables:
#' \describe{
#'   \item{date}{Date, the signup date}
#'   \item{new_contributors}{integer, number of new contributors that day}
#'   \item{cumulative}{integer, running total of contributors}
#' }
#' @source Aggregated from public Phabricator user data at
#'   \url{https://reviews.freebsd.org}
"freebsd_contributors_daily"
