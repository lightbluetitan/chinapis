# Stated Car Choice Data from Chinese Buyers

This dataset, china_cars_tbl_df, is a tibble containing stated choice
observations from a conjoint survey conducted by Helveston et al.
(2015). The survey includes 448 choice observations from Chinese car
buyers and 384 from U.S. car buyers. The surveys were administered in
2012 across four major Chinese cities (Beijing, Shanghai, Shenzhen, and
Chengdu), online in the U.S. via Amazon Mechanical Turk, and in person
at the Pittsburgh Auto Show. Participants were asked to choose a vehicle
from a set of three alternatives in 15 choice tasks.

## Usage

``` r
data(china_cars_tbl_df)
```

## Format

A tibble with 20,160 observations and 20 variables:

- id:

  Participant ID (numeric)

- obsnum:

  Observation number (numeric)

- choice:

  Indicates if the option was chosen (1 = yes, 0 = no) (numeric)

- hev:

  Hybrid electric vehicle dummy variable (numeric)

- phev10:

  Plug-in hybrid vehicle with 10-mile range dummy (numeric)

- phev20:

  Plug-in hybrid vehicle with 20-mile range dummy (numeric)

- phev40:

  Plug-in hybrid vehicle with 40-mile range dummy (numeric)

- bev75:

  Battery electric vehicle with 75-mile range dummy (numeric)

- bev100:

  Battery electric vehicle with 100-mile range dummy (numeric)

- bev150:

  Battery electric vehicle with 150-mile range dummy (numeric)

- phevFastcharge:

  Fast charging availability for PHEV (numeric)

- bevFastcharge:

  Fast charging availability for BEV (numeric)

- price:

  Price of the vehicle (numeric)

- opCost:

  Operating cost (numeric)

- accelTime:

  Acceleration time (numeric)

- american:

  American brand dummy variable (numeric)

- japanese:

  Japanese brand dummy variable (numeric)

- chinese:

  Chinese brand dummy variable (numeric)

- skorean:

  South Korean brand dummy variable (numeric)

- weights:

  Survey weights (numeric)

## Source

Data taken from the logitr package version 1.1.2

## Details

The dataset name has been kept as 'china_cars_tbl_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the ChinAPIs package and assists
users in identifying its specific characteristics. The suffix 'tbl_df'
indicates that the dataset is a tibble (a modern form of data frame).
The original content has not been modified in any way.
