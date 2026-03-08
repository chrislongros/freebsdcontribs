# freebsdcontribs

Aggregated contributor signup statistics for the FreeBSD
Phabricator code review platform ([reviews.freebsd.org](https://reviews.freebsd.org)).

No personal data is included — only signup counts and cumulative totals.

## Installation

```r
# Install from GitHub
devtools::install_github("chrislongros/freebsdcontribs")
```

## Datasets

### `freebsd_contributors` (monthly)

| Column | Type | Description |
|--------|------|-------------|
| `month` | Date | First day of each month |
| `new_contributors` | integer | New contributors that month |
| `cumulative` | integer | Running total |

- **147 rows** (November 2013 – March 2026)

### `freebsd_contributors_daily` (daily)

| Column | Type | Description |
|--------|------|-------------|
| `date` | Date | Signup date |
| `new_contributors` | integer | New contributors that day |
| `cumulative` | integer | Running total |

- **2,531 rows** (November 2013 – March 2026)
- Suitable for time series analysis

## Usage

```r
library(freebsdcontribs)

# Monthly growth
data(freebsd_contributors)
plot(freebsd_contributors$month, freebsd_contributors$cumulative,
     type = "l", xlab = "Date", ylab = "Total Contributors",
     main = "FreeBSD Phabricator Contributor Growth")

# Daily signups (time series)
data(freebsd_contributors_daily)
plot(freebsd_contributors_daily$date,
     freebsd_contributors_daily$new_contributors,
     type = "h", xlab = "Date", ylab = "New Contributors",
     main = "FreeBSD Daily Contributor Signups")
```

## Summary

- **7,602 total contributors**
- Date range: November 2013 – March 2026

## Source

Aggregated from public user data at [reviews.freebsd.org](https://reviews.freebsd.org).

## License

CC0
