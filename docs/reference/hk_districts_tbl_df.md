# Hong Kong District Labels and Regional Classification

This dataset, hk_districts_tbl_df, is a tibble summarizing the region
classification and abbreviated labels of the 18 administrative districts
in Hong Kong. It provides English and Chinese names for each district,
along with their corresponding region and abbreviation. This dataset is
useful for geographic mapping and administrative categorization.

## Usage

``` r
data(hk_districts_tbl_df)
```

## Format

A tibble with 18 observations and 6 variables:

- Code:

  District code (character)

- District_EN:

  District name in English (character)

- District_ZH:

  District name in Chinese (character)

- Region_EN:

  Region classification in English (character)

- Region_ZH:

  Region classification in Chinese (character)

- Abbrev:

  Abbreviation of the district (character)

## Source

Data taken from the hkdatasets package version 1.0.0

## Details

The dataset name has been kept as 'hk_districts_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble (a modern form of data
frame). The original content has not been modified in any way.
