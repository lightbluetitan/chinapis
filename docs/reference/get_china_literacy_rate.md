# Get China's Literacy Rate (Age 15+) from World Bank

Retrieves China's literacy rate for adults aged 15 and above, expressed
as a percentage, for the years 2010 to 2022 using the World Bank Open
Data API. The indicator used is `SE.ADT.LITR.ZS`.

## Usage

``` r
get_china_literacy_rate()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/SE.ADT.LITR.ZS>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Literacy rate, adult total (

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Literacy rate as numeric percentage

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
  get_china_literacy_rate()
}
```
