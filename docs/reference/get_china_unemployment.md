# Get China's Unemployment Rate from World Bank

Retrieves China's Unemployment, total ( for the years 2010 to 2022 using
the World Bank Open Data API. The indicator used is `SL.UEM.TOTL.ZS`.

## Usage

``` r
get_china_unemployment()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Unemployment, total (

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Unemployment rate as percentage in numeric form

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
  get_china_unemployment()
}
```
