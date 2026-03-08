# freebsdcontribs

Over 30 years of FreeBSD development activity, packaged for R.

This dataset covers two aspects of the FreeBSD project:

- **Git commit history** (1993-2026) — every commit, every author, extracted from the cloned repository
- **Phabricator signups** (2013-2026) — account registrations on the code review platform

No personal information is included. Authors are counted, not identified.

## Installation

```r
devtools::install_github("chrislongros/freebsdcontribs")
```

## Datasets

| Dataset | Rows | Granularity | Source | What it measures |
|---------|------|-------------|--------|------------------|
| `freebsd_daily_commits` | 11,882 | Daily | Git repo | Commits per day |
| `freebsd_daily_authors` | 2,041 | Daily | Git repo | First-time committers per day |
| `freebsd_contributors` | 147 | Monthly | Phabricator | New signups per month |
| `freebsd_contributors_daily` | 2,531 | Daily | Phabricator | New signups per day |

### From git repository (complete data)

#### `freebsd_daily_commits`

| Column | Type | Description |
|--------|------|-------------|
| `date` | Date | Commit date |
| `commits` | integer | Commits that day |
| `cumulative_commits` | integer | Running total |

**953,162 total commits** across 11,882 active days (1993-2026)

#### `freebsd_daily_authors`

| Column | Type | Description |
|--------|------|-------------|
| `date` | Date | Date of first commit |
| `new_authors` | integer | New committers that day |
| `cumulative_authors` | integer | Running total |

**3,323 unique committers** over the project's lifetime

### From Phabricator (signup data)

#### `freebsd_contributors` (monthly)

| Column | Type | Description |
|--------|------|-------------|
| `month` | Date | First day of each month |
| `new_contributors` | integer | New signups that month |
| `cumulative` | integer | Running total |

#### `freebsd_contributors_daily` (daily)

| Column | Type | Description |
|--------|------|-------------|
| `date` | Date | Signup date |
| `new_contributors` | integer | New signups that day |
| `cumulative` | integer | Running total |

**7,602 total signups** (November 2013 - March 2026). Note: signups != committers. Many people register but never commit.

## Quick start

```r
library(freebsdcontribs)

# Cumulative commits over time
data(freebsd_daily_commits)
plot(freebsd_daily_commits$date, freebsd_daily_commits$cumulative_commits,
     type = "l", lwd = 2, col = "red",
     xlab = "Date", ylab = "Total Commits",
     main = "FreeBSD Cumulative Commits (1993-2026)")

# Committer growth
data(freebsd_daily_authors)
plot(freebsd_daily_authors$date, freebsd_daily_authors$cumulative_authors,
     type = "l", lwd = 2, col = "steelblue",
     xlab = "Date", ylab = "Unique Committers",
     main = "FreeBSD Committer Growth")
```

## Sources

- Git data: Cloned from [freebsd/freebsd-src](https://github.com/freebsd/freebsd-src)
- Signup data: [reviews.freebsd.org](https://reviews.freebsd.org)

## See also

For multi-project comparison (FreeBSD, OpenBSD, NetBSD, PostgreSQL), see [osscontribs](https://github.com/chrislongros/osscontribs).

## License

CC0 — use it however you like.
