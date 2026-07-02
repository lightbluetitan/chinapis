# List of Prominent Chinese Cities

This dataset, chinese_cities_tbl_df, is a tibble that contains
information about 367 prominent cities in China. Each row represents a
city and includes geographic coordinates (latitude and longitude),
administrative information, and population data. The dataset is a tibble
(special type of data frame) that preserves the original structure from
its source simplemaps.

## Usage

``` r
data(chinese_cities_tbl_df)
```

## Format

A tibble with 367 observations and 9 variables:

- city:

  City name in English (character)

- lat:

  Latitude coordinate (numeric)

- lng:

  Longitude coordinate (numeric)

- country:

  Country name (always "China" in this dataset) (character)

- iso2:

  2-letter country code (always "CN" in this dataset) (character)

- admin_name:

  Administrative division name (province or equivalent) (character)

- capital:

  Administrative capital status (character)

- population:

  City population estimate (numeric)

- population_proper:

  City proper population estimate (numeric)

## Source

Data obtained from simplemaps: <https://simplemaps.com/data/cn-cities>

## Details

The dataset name has been kept as 'chinese_cities_tbl_df' to maintain
consistency with the naming conventions in the ChinAPIs package. The
suffix 'tbl_df' indicates that this is a tibble data frame. The original
content has not been modified in any way.
