# Chinese Dams Dataset

This dataset, chinese_dams_tbl_df, is a tibble containing information
about 158 dams in China. Each row represents a dam and includes location
details, physical characteristics, and completion information. The
dataset preserves the original structure from its source Kaggle.

## Usage

``` r
data(chinese_dams_tbl_df)
```

## Format

A tibble with 158 observations and 8 variables:

- Name:

  Name of the dam (character)

- Province:

  Primary province where the dam is located (character)

- Second Province:

  Additional province if dam spans multiple regions (character)

- Impounds:

  River or water body the dam impounds (character)

- Height:

  Height of the dam in meters (numeric)

- Type:

  Type of dam (e.g., "Arch-gravity", "Embankment") (character)

- Complete:

  Year of completion (character)

- Storage capacity (million m3):

  Water storage capacity in million cubic meters (numeric)

## Source

Data obtained from Kaggle:
<https://www.kaggle.com/datasets/alexandrepetit881234/chinese-dams>

## Details

The dataset name has been kept as 'chinese_dams_tbl_df' to maintain
consistency with the naming conventions in the ChinAPIs package. The
suffix 'tbl_df' indicates that this is a tibble data frame. The original
content has not been modified in any way.
