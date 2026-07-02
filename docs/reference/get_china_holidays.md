# Get Official Public Holidays in China for a Given Year

Retrieves the list of official public holidays in China for a specific
year using the Nager.Date public holidays API.

## Usage

``` r
get_china_holidays(year)
```

## Source

<https://date.nager.at/>

## Arguments

- year:

  An integer indicating the year (e.g., 2024).

## Value

A tibble with the following columns:

- `date`: Date of the holiday (class `Date`)

- `local_name`: Holiday name in the local language

- `name`: Holiday name in English

Returns `NULL` if the API request fails.

## Examples

``` r
if (interactive()) {
  get_china_holidays(2024)
}
```
