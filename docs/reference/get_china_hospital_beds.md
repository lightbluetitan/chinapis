# Get Hospital Beds per 1,000 People in China from World Bank

Retrieves data on the number of hospital beds per 1,000 people in China
from 2010 to 2022 using the World Bank Open Data API. The indicator used
is `SH.MED.BEDS.ZS`.

## Usage

``` r
get_china_hospital_beds()
```

## Source

World Bank Open Data API:
<https://data.worldbank.org/indicator/SH.MED.BEDS.ZS>

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Hospital beds (per 1,000 people)")

- `country`: Country name ("China")

- `year`: Year of the data (integer)

- `value`: Hospital beds per 1,000 people (numeric)

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
  get_china_hospital_beds()
}
```
