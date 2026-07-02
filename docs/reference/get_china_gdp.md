# Get China's GDP (Current US\$) from World Bank

Retrieves China's Gross Domestic Product (GDP) in current US dollars for
the years 2010 to 2022 using the World Bank Open Data API. The indicator
used is `NY.GDP.MKTP.CD`.

## Usage

``` r
get_china_gdp()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/NY.GDP.MKTP.CD>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "GDP (current US\$)")

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: GDP value in numeric form

- `value_label`: Formatted GDP value (e.g., "1,466,464,899,304")

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
[`as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html),
[`comma`](https://scales.r-lib.org/reference/comma.html)

## Examples

``` r
if (interactive()) {
  get_china_gdp()
}
```
