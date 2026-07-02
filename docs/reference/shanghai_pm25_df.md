# PM2.5 Pollution and Weather Data in Shanghai

This dataset, shanghai_pm25_df, is a data frame containing information
about PM2.5 air pollution and weather conditions in Shanghai. The data
originates from a broader study on fine particle pollution in five
Chinese cities. For this dataset, lines containing missing values were
removed, and the first 5,000 complete observations were selected. Only
pollution-related and weather-related variables were retained.

## Usage

``` r
data(shanghai_pm25_df)
```

## Format

A data frame with 5,000 observations and 10 variables:

- PM_Jingan:

  PM2.5 concentration at Jingan station (integer)

- PM_US.Post:

  PM2.5 concentration at the U.S. Consulate station (integer)

- PM_Xuhui:

  PM2.5 concentration at Xuhui station (integer)

- DEWP:

  Dew point temperature (integer)

- HUMI:

  Relative humidity (numeric)

- PRES:

  Barometric pressure (numeric)

- TEMP:

  Temperature in degrees Celsius (integer)

- Iws:

  Wind speed (numeric)

- precipitation:

  Precipitation amount (numeric)

- Iprec:

  Cumulative precipitation index (numeric)

## Source

Data taken from the slm package version 1.2.0

## Details

The dataset name has been kept as 'shanghai_pm25_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the ChinAPIs package and assists
users in identifying its specific characteristics. The suffix 'df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.
