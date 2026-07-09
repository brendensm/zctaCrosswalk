# Introduction

This package is designed to help answer common analytical questions that arise
when working with US ZIP Codes.

Note: the entity which maintains US ZIP Codes (the US Postal
Service) does not release a map or crosswalk of that dataset. As a result, most
analysts instead use [ZIP Code Tabulation Areas (ZCTAs)](https://www.census.gov/programs-surveys/geography/guidance/geo-areas/zctas.html) which
are maintained by the US Census Bureau. Census
also provides [Relationship Files](https://www.census.gov/geographies/reference-files/time-series/geo/relationship-files.2020.html#zcta) that map ZCTAs to other geographies.

This package provides the Census Bureau's "2020 ZCTA to County Relationship File" as a tibble, combines it with useful publicly available metadata (such as State names) and provides convenience functions for querying it.

This package also contains a data structure to relate Connecticut's county-equivalent planning regions to ZCTAs. In 2022, 
Connecticut changed their counties to planning regions. You can read more detail about this change (here.)[https://www.federalregister.gov/documents/2022/06/06/2022-12063/change-to-county-equivalents-in-the-state-of-connecticut]
This change was made after the Census Bureau's ZCTA to County relationship file was released. This data structure relates the county-equivalents to the ZCTA crosswalk.

# Installation

You can install the latest stable version of this package from CRAN by typing the following:

```
install.packages("zctaCrosswalk")
```

You can install the latest
development version from Github by typing:

```
library(devtools)
install_github('https://github.com/MarketBridge/zctaCrosswalk/')
```

# Usage

The main functions in this package are:

 * `?get_zctas_by_county`
 * `?get_zctas_by_state`
 * `?get_zcta_metadata`

To learn more, please read the following 3 Vignettes:

1. Introduction 
2. Workflow with tidycensus
3. Developer Notes

You can access the Vignettes by typing the following after installing the package:

```
browseVignettes(package = "zctaCrosswalk")
```
