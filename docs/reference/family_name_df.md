# Chinese Surnames and National Frequency (1930–2008)

This dataset, family_name_df, is a data frame containing 1,806 Chinese
surnames along with their frequency and distribution across China. The
dataset includes 1806 observations and 7 variables, covering information
such as whether a surname is compound, its initial, frequency ranks, and
relative frequency between 1930 and 2008. This dataset is useful for
sociolinguistic analysis, demography, and historical population studies.

## Usage

``` r
data(family_name_df)
```

## Format

A data frame with 1806 observations and 7 variables:

- surname:

  Chinese surname (character)

- compound:

  Indicates if the surname is compound (numeric)

- initial:

  Initial letter of surname in Pinyin (character)

- initial.rank:

  Rank of the initial letter (numeric)

- n.1930_2008:

  Estimated number of people with the surname (1930–2008) (numeric)

- ppm.1930_2008:

  Relative frequency per million (1930–2008) (numeric)

- surname.uniqueness:

  Surname uniqueness score (numeric)

## Source

Data taken from the ChineseNames package version 2023.8

## Details

The dataset name has been kept as 'family_name_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the ChinAPIs package and assists
users in identifying its specific characteristics. The suffix 'df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.
