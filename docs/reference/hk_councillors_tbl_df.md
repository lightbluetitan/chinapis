# Hong Kong District Councillors Elected in 2019

This dataset, hk_councillors_tbl_df, is a tibble containing public
domain information about the 452 District Councillors elected in Hong
Kong during the 2019 election. It includes demographic, political, and
contact information, along with details on electoral performance and
constituency classification.

## Usage

``` r
data(hk_councillors_tbl_df)
```

## Format

A tibble with 452 observations and 33 variables:

- ConstituencyCode:

  Constituency code (character)

- Constituency_ZH:

  Constituency name in Chinese (character)

- Constituency_EN:

  Constituency name in English (character)

- District_ZH:

  District name in Chinese (character)

- District_EN:

  District name in English (character)

- Region_ZH:

  Region name in Chinese (character)

- Region_EN:

  Region name in English (character)

- Party_ZH:

  Political party name in Chinese (character)

- Party_EN:

  Political party name in English (character)

- DC_ZH:

  Name of councillor in Chinese (character)

- DC_EN:

  Name of councillor in English (character)

- FacebookURL:

  Link to councillor's Facebook page (character)

- DCPageURL:

  Link to official councillor page (character)

- Address:

  Office address (character)

- Phone:

  Phone number (character)

- Fax:

  Fax number (character)

- Email:

  Email address (character)

- WebsiteURL:

  Personal or campaign website URL (character)

- DCProjectPageURL:

  Project page URL (character)

- ElectionYear:

  Year of election (numeric)

- ElectionDate:

  Date of election (Date)

- CandidateNum:

  Number of candidates in the race (numeric)

- Occupation:

  Occupation of councillor (character)

- Political_ZH:

  Political position or orientation in Chinese (character)

- Political_EN:

  Political position or orientation in English (character)

- Camp_ZH:

  Political camp in Chinese (character)

- Camp_EN:

  Political camp in English (character)

- Vote:

  Number of votes received (numeric)

- VotePercentage:

  Vote percentage received (numeric)

- Gender_ZH:

  Gender in Chinese (character)

- Gender_EN:

  Gender in English (character)

- Tag_ZH:

  Additional tags or classifications in Chinese (character)

- Tag_EN:

  Additional tags or classifications in English (character)

## Source

Data taken from the hkdatasets package version 1.0.0

## Details

The dataset name has been kept as 'hk_councillors_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the ChinAPIs package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble (a modern form of data
frame). The original content has not been modified in any way.
