# Hong Kong Population by District and Age Group

This dataset, hk_population_tbl_df, is a tibble containing the
land-based non-institutional population of Hong Kong, broken down by
District Council district and age group. It provides population counts
for five age brackets and the total population for each of the 18
districts.

## Usage

``` r
data(hk_population_tbl_df)
```

## Format

A tibble with 18 observations and 8 variables:

- District_ZH:

  District name in Chinese (character)

- District_EN:

  District name in English (character)

- Age_0_14:

  Population aged 0 to 14 (numeric)

- Age_15_24:

  Population aged 15 to 24 (numeric)

- Age_25_44:

  Population aged 25 to 44 (numeric)

- Age_45_64:

  Population aged 45 to 64 (numeric)

- Age_65:

  Population aged 65 and over (numeric)

- TotalPopulation:

  Total population of the district (numeric)

## Source

Data taken from the hkdatasets package version 1.0.0

## Details

The dataset name has been kept as 'hk_population_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble (a modern form of data
frame). The original content has not been modified in any way.
