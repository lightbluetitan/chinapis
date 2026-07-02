# Population Statistics from the Chinese Name Database

This dataset, population_df, is a data frame containing population
statistics derived from the Chinese name database. The dataset includes
40 observations and 3 variables, representing raw and corrected counts
for various demographic items related to naming patterns and coverage.
It supports analyses of representativeness, name distribution, and
scaling adjustments.

## Usage

``` r
data(population_df)
```

## Format

A data frame with 40 observations and 3 variables:

- item:

  Demographic or classification item (character)

- n:

  Raw count (numeric)

- n.corrected:

  Corrected count (numeric)

## Source

Data taken from the ChineseNames package version 2023.8

## Details

The dataset name has been kept as 'population_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the ChinAPIs package and assists
users in identifying its specific characteristics. The suffix 'df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.
