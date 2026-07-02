# Get Under-5 Mortality Rate in China from World Bank

Retrieves China's under-five mortality rate (per 1,000 live births) for
the years 2010 to 2022 using the World Bank Open Data API. The indicator
used is `SH.DYN.MORT`.

## Usage

``` r
get_china_child_mortality()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/SH.DYN.MORT>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Mortality rate, under-5 (per 1,000
  live births)")

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Under-5 mortality rate per 1,000 live births (numeric)

## Details

This function sends a GET request to the World Bank API. If the API
request fails or returns an error status code, the function returns
`NULL` with an informative message.

## Note

Requires internet connection.

## See also

[`GET`](https://httr.r-lib.org/reference/GET.html),
[`fromJSON`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[`as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html)

## Examples

``` r
if (interactive()) {
  get_china_child_mortality()
}
```
