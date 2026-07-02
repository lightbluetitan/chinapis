# China Input-Output Table (2018, 42 Sectors)

This dataset, china_io_2018_42_df, is a data frame containing the
national input-output table of China for the year 2018. It includes 91
observations across 42 economic sectors. The values are expressed in
units of 10,000 Chinese Yuan (CNY). The dataset records transactions
between sectors, value added components, imports, exports, and other
final demand categories.

## Usage

``` r
data(china_io_2018_42_df)
```

## Format

A data frame with 91 observations and 53 variables:

- Code:

  Sector code (character)

- Description:

  Sector description in English (character)

- DescriptionInChinese:

  Sector description in Chinese (character)

- Origin:

  Type of entry (e.g., sector, total, final use) (character)

- 01:

  Intermediate demand from sector 01 (numeric)

- 02:

  Intermediate demand from sector 02 (numeric)

- 03:

  Intermediate demand from sector 03 (numeric)

- 04:

  Intermediate demand from sector 04 (numeric)

- 05:

  Intermediate demand from sector 05 (numeric)

- 06:

  Intermediate demand from sector 06 (numeric)

- 07:

  Intermediate demand from sector 07 (numeric)

- 08:

  Intermediate demand from sector 08 (numeric)

- 09:

  Intermediate demand from sector 09 (numeric)

- 10:

  Intermediate demand from sector 10 (numeric)

- 11:

  Intermediate demand from sector 11 (numeric)

- 12:

  Intermediate demand from sector 12 (numeric)

- 13:

  Intermediate demand from sector 13 (numeric)

- 14:

  Intermediate demand from sector 14 (numeric)

- 15:

  Intermediate demand from sector 15 (numeric)

- 16:

  Intermediate demand from sector 16 (numeric)

- 17:

  Intermediate demand from sector 17 (numeric)

- 18:

  Intermediate demand from sector 18 (numeric)

- 19:

  Intermediate demand from sector 19 (numeric)

- 20:

  Intermediate demand from sector 20 (numeric)

- 21:

  Intermediate demand from sector 21 (numeric)

- 22:

  Intermediate demand from sector 22 (numeric)

- 23:

  Intermediate demand from sector 23 (numeric)

- 24:

  Intermediate demand from sector 24 (numeric)

- 25:

  Intermediate demand from sector 25 (numeric)

- 26:

  Intermediate demand from sector 26 (numeric)

- 27:

  Intermediate demand from sector 27 (numeric)

- 28:

  Intermediate demand from sector 28 (numeric)

- 29:

  Intermediate demand from sector 29 (numeric)

- 30:

  Intermediate demand from sector 30 (numeric)

- 31:

  Intermediate demand from sector 31 (numeric)

- 32:

  Intermediate demand from sector 32 (numeric)

- 33:

  Intermediate demand from sector 33 (numeric)

- 34:

  Intermediate demand from sector 34 (numeric)

- 35:

  Intermediate demand from sector 35 (numeric)

- 36:

  Intermediate demand from sector 36 (numeric)

- 37:

  Intermediate demand from sector 37 (numeric)

- 38:

  Intermediate demand from sector 38 (numeric)

- 39:

  Intermediate demand from sector 39 (numeric)

- 40:

  Intermediate demand from sector 40 (numeric)

- 41:

  Intermediate demand from sector 41 (numeric)

- 42:

  Intermediate demand from sector 42 (numeric)

- TIU:

  Total intermediate use (numeric)

- TC:

  Total consumption (numeric)

- FU201:

  Final use 201: government consumption (numeric)

- FU202:

  Final use 202: household consumption (numeric)

- EX:

  Exports (numeric)

- TFU:

  Total final use (numeric)

- GO:

  Gross output (numeric)

## Source

Data taken from the ionet package version 0.2.2

## Details

The dataset name has been kept as 'china_io_2018_42_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a base R data frame. The original
content has not been modified in any way.
