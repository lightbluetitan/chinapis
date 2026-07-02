# China's Corruption Investigations

This dataset, china_corruption_tbl_df, is a tibble containing
information on officials investigated during Xi Jinping's
anti-corruption campaign. The dataset includes 10 observations and 6
variables, covering administrative divisions such as provinces,
prefectures, and counties, along with their corresponding codes. While
the original dataset contains data on nearly 20,000 individuals, this
version includes a simplified subset of administrative identifiers for
illustrative purposes.

## Usage

``` r
data(china_corruption_tbl_df)
```

## Format

A tibble with 10 observations and 6 variables:

- province:

  Province code (numeric)

- prefecture:

  Name of the prefecture (character)

- county:

  Name of the county (character)

- province_id:

  Province identifier (numeric)

- prefecture_id:

  Prefecture identifier (numeric)

- county_id:

  County identifier (numeric)

## Source

Data taken from the regioncode package version 0.1.2

## Details

The dataset name has been kept as 'china_corruption_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble object. The original
content has not been modified in any way.
