# Get China's Life Expectancy at Birth from World Bank

Retrieves China's life expectancy at birth (in years) for the years 2010
to 2022 using the World Bank Open Data API. The indicator used is
`SP.DYN.LE00.IN`.

## Usage

``` r
get_china_life_expectancy()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/SP.DYN.LE00.IN>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Life expectancy at birth, total
  (years)")

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Life expectancy value in numeric form (years)

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
  get_china_life_expectancy()
}
```
