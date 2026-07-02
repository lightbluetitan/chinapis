# Hong Kong Street Names as of 2020

This dataset, hk_street_names_tbl_df, is a tibble containing street
names in Hong Kong as of the year 2020. It includes English and Chinese
names for each street and logical indicators of whether a street is
located within one of the 18 administrative districts of Hong Kong. This
dataset is useful for geographic, linguistic, and administrative
analysis.

## Usage

``` r
data(hk_street_names_tbl_df)
```

## Format

A tibble with 4,603 observations and 21 variables:

- DC:

  District code or abbreviation (character)

- StreetNames_EN:

  Street name in English (character)

- StreetNames_ZH:

  Street name in Chinese (character)

- TM:

  Tuen Mun district indicator (logical)

- ST:

  Sha Tin district indicator (logical)

- E:

  Eastern district indicator (logical)

- S:

  Southern district indicator (logical)

- WC:

  Wan Chai district indicator (logical)

- C&W:

  Central and Western district indicator (logical)

- Is:

  Islands district indicator (logical)

- YL:

  Yuen Long district indicator (logical)

- SK:

  Sai Kung district indicator (logical)

- KC:

  Kowloon City district indicator (logical)

- YTM:

  Yau Tsim Mong district indicator (logical)

- KT:

  Kwun Tong district indicator (logical)

- SSP:

  Sham Shui Po district indicator (logical)

- N:

  North district indicator (logical)

- TP:

  Tai Po district indicator (logical)

- K&T:

  Kwai Tsing district indicator (logical)

- TW:

  Tsuen Wan district indicator (logical)

- WTS:

  Wong Tai Sin district indicator (logical)

## Source

Data taken from the hkdatasets package version 1.0.0

## Details

The dataset name has been kept as 'hk_street_names_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble (a modern form of data
frame). The original content has not been modified in any way.
