# ChinAPIs

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

The `ChinAPIs` package provides a unified interface to access open data from the **World Bank API**, **Nager.Date API**, and the **REST Countries API**, with a focus on **China**. It allows users to retrieve up-to-date information on topics such as economic indicators, population statistics, unemployment rates, holidays, and basic geopolitical details.

In addition to API-access functions, the package includes one of the largest curated collections of open datasets related to **China** and **Hong Kong**. These datasets cover areas such as air quality, demographic indicators, input-output economic tables, epidemiology, administrative divisions, name distributions, political structure, and various social indicators.

## Installation

You can install the `ChinAPIs` package from CRAN with the following R function:

```R

install.packages("ChinAPIs")

```


## Usage

After installation, load the package and start exploring and using its functions and datasets.

```R

library(ChinAPIs)

```

### ChinAPIs Functions

Below is a list of the main functions included in the package:

- `get_country_info_cn()`: Get key geopolitical and administrative information about China from the REST Countries API.

- `get_china_gdp()`: Get China’s Gross Domestic Product (current US$) from the World Bank

- `get_china_cpi()`: Get China's Consumer Price Index from World Bank

- `get_china_population()`: Get China’s total population from the World Bank

- `get_china_literacy_rate()`: Get China's adult literacy rate (Age 15+) from the World Bank

- `get_china_life_expectancy()`: Get life expectancy at birth for China from the World Bank

- `get_china_unemployment()`: Get China's Unemployment Rate from World Bank

- `get_china_energy_use()`: Get China's energy use per capita (kg of oil equivalent) from the World Bank

- `get_china_child_mortality()`: Get under-5 mortality rate (per 1,000 live births) in China from the World Bank

- `get_china_hospital_beds()`: Get hospital beds per 1,000 people in China from the World Bank

- `get_china_holidays()`: Retrieve Chinese public holidays (including past and upcoming dates) from the Nager.Date API
   (e.g., get_china_holidays(2024), get_china_holidays(2025)).

- `view_datasets_ChinAPIs()`: Lists all curated datasets included in the ChinAPIs package

## Dataset Suffixes

Each dataset in `ChinAPIs` is labeled with a *suffix* to indicate its structure and type:

- `_df`: A standard data frame.

- `_tbl_df`: A tibble data frame object.

- `_list`: A list object.

- `_matrix`: A matrix object.

## Datasets Included in ChinAPIs

In addition to API access functions, `ChinAPIs` provides several preloaded datasets related to China’s air quality, demographics, input-output tables, epidemiology, political 
structure, names, and social indicators. 
Here are some featured examples:

- `bj_air_quality_tbl_df`: Tibble of hourly air pollution and weather measurements from Dongsi, Beijing.

- `china_admin_divisions_df`: Data frame containing the codes and names of China's administrative divisions.

- `shanghai_factories_df`: Data frame containing data on per capita output of workers in 17 factories located in Shanghai.

## Example Code:

```R

# Load the package

library(ChinAPIs)

# Retrieves essential information about China or any other country

get_country_info_cn()


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

