# ChinAPIs

[![License:
MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://lightbluetitan.github.io/chinapis/LICENSE)
[![CRAN
status](https://www.r-pkg.org/badges/version/ChinAPIs)](https://cran.r-project.org/package=ChinAPIs)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/ChinAPIs)](https://cran.r-project.org/package=ChinAPIs)
[![CRAN total
downloads](https://cranlogs.r-pkg.org/badges/grand-total/ChinAPIs)](https://cran.r-project.org/package=ChinAPIs)

The `ChinAPIs` package provides a unified interface to access open data
from the **World Bank API** and **Nager.Date API**, with a focus on
**China**. It allows users to retrieve up-to-date information on topics
such as economic indicators, population statistics, unemployment rates,
and holidays.

In addition to API-access functions, the package includes one of the
largest curated collections of open datasets related to **China** and
**Hong Kong**. These datasets cover areas such as air quality,
demographic indicators, input-output economic tables, epidemiology,
administrative divisions, name distributions, political structure, and
various social indicators.

## Installation

You can install the `ChinAPIs` package from CRAN with the following R
function:

``` r


install.packages("ChinAPIs")
```

## Usage

After installation, load the package and start exploring and using its
functions and datasets.

``` r


library(ChinAPIs)
```

### ChinAPIs Functions

Below is a list of the main functions included in the package:

- [`get_china_gdp()`](https://lightbluetitan.github.io/chinapis/reference/get_china_gdp.md):
  Get China’s Gross Domestic Product (current US\$) from the World Bank

- [`get_china_cpi()`](https://lightbluetitan.github.io/chinapis/reference/get_china_cpi.md):
  Get China’s Consumer Price Index from World Bank

- [`get_china_population()`](https://lightbluetitan.github.io/chinapis/reference/get_china_population.md):
  Get China’s total population from the World Bank

- [`get_china_literacy_rate()`](https://lightbluetitan.github.io/chinapis/reference/get_china_literacy_rate.md):
  Get China’s adult literacy rate (Age 15+) from the World Bank

- [`get_china_life_expectancy()`](https://lightbluetitan.github.io/chinapis/reference/get_china_life_expectancy.md):
  Get life expectancy at birth for China from the World Bank

- [`get_china_unemployment()`](https://lightbluetitan.github.io/chinapis/reference/get_china_unemployment.md):
  Get China’s Unemployment Rate from World Bank

- [`get_china_energy_use()`](https://lightbluetitan.github.io/chinapis/reference/get_china_energy_use.md):
  Get China’s energy use per capita (kg of oil equivalent) from the
  World Bank

- [`get_china_child_mortality()`](https://lightbluetitan.github.io/chinapis/reference/get_china_child_mortality.md):
  Get under-5 mortality rate (per 1,000 live births) in China from the
  World Bank

- [`get_china_hospital_beds()`](https://lightbluetitan.github.io/chinapis/reference/get_china_hospital_beds.md):
  Get hospital beds per 1,000 people in China from the World Bank

- [`get_china_holidays()`](https://lightbluetitan.github.io/chinapis/reference/get_china_holidays.md):
  Retrieve Chinese public holidays (including past and upcoming dates)
  from the Nager.Date API (e.g., get_china_holidays(2024),
  get_china_holidays(2025)).

- [`view_datasets_ChinAPIs()`](https://lightbluetitan.github.io/chinapis/reference/view_datasets_ChinAPIs.md):
  Lists all curated datasets included in the ChinAPIs package

## Dataset Suffixes

Each dataset in `ChinAPIs` is labeled with a *suffix* to indicate its
structure and type:

- `_df`: A standard data frame.

- `_tbl_df`: A tibble data frame object.

- `_list`: A list object.

- `_matrix`: A matrix object.

## Datasets Included in ChinAPIs

In addition to API access functions, `ChinAPIs` provides several
preloaded datasets related to China’s air quality, demographics,
input-output tables, epidemiology, political structure, names, and
social indicators. Here are some featured examples:

- `bj_air_quality_tbl_df`: Tibble of hourly air pollution and weather
  measurements from Dongsi, Beijing.

- `china_admin_divisions_df`: Data frame containing the codes and names
  of China’s administrative divisions.

- `shanghai_factories_df`: Data frame containing data on per capita
  output of workers in 17 factories located in Shanghai.

## Example Code:

``` r


# Load the package

library(ChinAPIs)

# Get China's Population (Total) from World Bank

get_china_population()

# Load a dataset

data(china_cars_tbl_df)

# Shows six rows of the dataset

head(china_cars_tbl_df)

# Display the structure of the dataset

str(china_cars_tbl_df)

# Shows the whole dataset

View(china_cars_tbl_df)
```
