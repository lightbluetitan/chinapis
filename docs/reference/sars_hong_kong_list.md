# Daily Incidence of the 2003 SARS Epidemic in Hong Kong

This dataset, sars_hong_kong_list, is a list containing two components:
the daily number of reported SARS cases and the serial interval
distribution during the 2003 SARS epidemic in Hong Kong. The incidence
data covers 107 days, and the serial interval distribution is provided
for 25 days.

## Usage

``` r
data(sars_hong_kong_list)
```

## Format

A list with 2 components:

- incidence:

  Daily number of SARS cases reported in Hong Kong (numeric vector of
  length 107)

- si:

  Serial interval distribution (numeric vector of length 25)

## Source

Data taken from the EpiLPS package version 1.3.0

## Details

The dataset name has been kept as 'sars_hong_kong_list' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'list' indicates that the dataset is a list object. The original content
has not been modified in any way.
