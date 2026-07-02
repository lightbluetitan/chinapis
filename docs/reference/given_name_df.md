# Chinese Given Name Characters and Frequency (1930–2008)

This dataset, given_name_df, is a data frame containing 2,614 Chinese
characters commonly used in given names, along with nationwide frequency
data. The dataset includes 2614 observations and 25 variables, providing
information such as stroke count, gender distribution, historical usage,
frequency per million, uniqueness, and perceived name traits such as
warmth and competence.

## Usage

``` r
data(given_name_df)
```

## Format

A data frame with 2614 observations and 25 variables:

- character:

  Chinese character used in given names (character)

- pinyin:

  Pronunciation in Pinyin (character)

- bihua:

  Number of strokes in the character (numeric)

- n.male:

  Number of males with this character in their name (numeric)

- n.female:

  Number of females with this character in their name (numeric)

- name.gender:

  Gender index (numeric)

- n.1930_1959:

  Number of occurrences between 1930–1959 (numeric)

- n.1960_1969:

  Number of occurrences between 1960–1969 (numeric)

- n.1970_1979:

  Number of occurrences between 1970–1979 (numeric)

- n.1980_1989:

  Number of occurrences between 1980–1989 (numeric)

- n.1990_1999:

  Number of occurrences between 1990–1999 (numeric)

- n.2000_2008:

  Number of occurrences between 2000–2008 (numeric)

- ppm.1930_1959:

  Frequency per million (1930–1959) (numeric)

- ppm.1960_1969:

  Frequency per million (1960–1969) (numeric)

- ppm.1970_1979:

  Frequency per million (1970–1979) (numeric)

- ppm.1980_1989:

  Frequency per million (1980–1989) (numeric)

- ppm.1990_1999:

  Frequency per million (1990–1999) (numeric)

- ppm.2000_2008:

  Frequency per million (2000–2008) (numeric)

- name.ppm:

  Overall frequency per million (numeric)

- name.uniqueness:

  Uniqueness score of the name (numeric)

- corpus.ppm:

  Frequency in linguistic corpus (numeric)

- corpus.uniqueness:

  Uniqueness in corpus (numeric)

- name.valence:

  Emotional valence of the name (numeric)

- name.warmth:

  Perceived warmth of the name (numeric)

- name.competence:

  Perceived competence of the name (numeric)

## Source

Data taken from the ChineseNames package version 2023.8

## Details

The dataset name has been kept as 'given_name_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the ChinAPIs package and assists
users in identifying its specific characteristics. The suffix 'df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.
