# Beijing Air Quality Dataset (2015)

This dataset, bj_air_quality_tbl_df, is a tibble containing hourly air
pollutant and weather measurements from the Dongsi air quality
monitoring site in Beijing, China. The data covers 320 complete days of
the year 2015 and includes variables such as nitrogen dioxide
(NO\\\_2\\), ozone (O\\\_3\\), temperature, and wind speed.

## Usage

``` r
data(bj_air_quality_tbl_df)
```

## Format

A tibble with 7,680 observations and 6 variables:

- DATE:

  Date of observation (Date)

- HOUR:

  Hour of the day (integer, from 0 to 23)

- NO2:

  Nitrogen dioxide concentration (numeric)

- O3:

  Ozone concentration (numeric)

- TEMP:

  Temperature in degrees Celsius (numeric)

- WIND:

  Wind speed in meters per second (numeric)

## Source

Data taken from the gmgm package version 1.1.2

## Details

The dataset name has been kept as 'bj_air_quality_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble (a modern form of data
frame). The original content has not been modified in any way.
