# Get China's Consumer Price Index from World Bank

Retrieves China's Consumer Price Index (2010 = 100) for the years 2010
to 2022 using the World Bank Open Data API. The indicator used is
`FP.CPI.TOTL`.

## Usage

``` r
get_china_cpi()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/FP.CPI.TOTL>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Consumer price index (2010 =
  100)")

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Consumer Price Index value in numeric form

## Details

The function sends a GET request to the World Bank API. If the API
request fails or returns an error status code, the function returns
`NULL` with an informative message.

## Note

Requires internet connection. The data is retrieved in real time from
the World Bank API.

## See also

[`GET`](https://httr.r-lib.org/reference/GET.html),
[`fromJSON`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[`as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html)

## Examples

``` r
if (interactive()) {
  get_china_cpi()
}
```
