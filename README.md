# freebsdcontribs

Aggregated monthly contributor signup statistics for the FreeBSD
Phabricator code review platform ([reviews.freebsd.org](https://reviews.freebsd.org)).

No personal data is included — only monthly signup counts and cumulative totals.

## Installation

```r
# Install from GitHub
devtools::install_github("chrislongros/freebsdcontribs")
```

## Usage

```r
library(freebsdcontribs)
data(freebsd_contributors)

head(freebsd_contributors)
#>        month new_contributors cumulative
#> 1 2013-11-01                2          2
#> 2 2014-01-01                1          3
#> 3 2014-03-01                4          7
#> 4 2014-04-01                1          8
#> 5 2014-05-01               97        105
#> 6 2014-06-01               31        136

plot(freebsd_contributors$month, freebsd_contributors$cumulative,
     type = "l", xlab = "Date", ylab = "Total Contributors",
     main = "FreeBSD Phabricator Contributor Growth")
```

## Dataset

| Column | Type | Description |
|--------|------|-------------|
| `month` | Date | First day of each month |
| `new_contributors` | integer | New contributors that month |
| `cumulative` | integer | Running total |

- **147 rows** (November 2013 – March 2026)
- **7,602 total contributors**

## Source

Aggregated from public user data at [reviews.freebsd.org](https://reviews.freebsd.org).

## License

CC0
