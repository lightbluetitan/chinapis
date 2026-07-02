# Chinese Health and Family Life Survey

This dataset, health_family_life_df, is a data frame from the Chinese
Health and Family Life Survey, which sampled 60 villages and urban
neighborhoods to represent the full geographical and socioeconomic range
of contemporary China. The dataset includes 1,534 observations and
covers variables related to age, education, income, health, and
well-being, both for respondents and their partners.

## Usage

``` r
data(health_family_life_df)
```

## Format

A data frame with 1,534 observations and 10 variables:

- R_region:

  Region of respondent (factor with 6 levels)

- R_age:

  Age of respondent (numeric)

- R_edu:

  Education level of respondent (ordered factor with 6 levels)

- R_income:

  Income of respondent (numeric)

- R_health:

  Self-reported health status of respondent (ordered factor with 5
  levels)

- R_height:

  Height of respondent (numeric)

- R_happy:

  Self-reported happiness level of respondent (ordered factor with 4
  levels)

- A_height:

  Height of respondent’s partner (numeric)

- A_edu:

  Education level of respondent’s partner (ordered factor with 6 levels)

- A_income:

  Income of respondent’s partner (numeric)

## Source

Data taken from the HSAUR3 package version 1.0-15

## Details

The dataset name has been kept as 'health_family_life_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
