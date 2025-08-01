# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# given_name_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("given_name_df is a data frame", {
  expect_s3_class(given_name_df, "data.frame")
})

# Test 2: Confirm it has 25 columns
test_that("given_name_df has 25 columns", {
  expect_equal(length(given_name_df), 25)
})

# Test 3: Confirm it has 2614 rows
test_that("given_name_df has 2614 rows", {
  expect_equal(nrow(given_name_df), 2614)
})

# Test 4: Confirm column names are correct
test_that("given_name_df has correct column names", {
  expect_named(given_name_df, c(
    "character", "pinyin", "bihua", "n.male", "n.female",
    "name.gender", "n.1930_1959", "n.1960_1969", "n.1970_1979", "n.1980_1989",
    "n.1990_1999", "n.2000_2008", "ppm.1930_1959", "ppm.1960_1969", "ppm.1970_1979",
    "ppm.1980_1989", "ppm.1990_1999", "ppm.2000_2008", "name.ppm", "name.uniqueness",
    "corpus.ppm", "corpus.uniqueness", "name.valence", "name.warmth", "name.competence"
  ))
})

# Test 5: Confirm column types are correct
test_that("given_name_df columns have correct types", {
  expect_type(given_name_df$character, "character")
  expect_type(given_name_df$pinyin, "character")
  expect_type(given_name_df$bihua, "double")
  expect_type(given_name_df$n.male, "double")
  expect_type(given_name_df$n.female, "double")
  expect_type(given_name_df$name.gender, "double")
  expect_type(given_name_df$n.1930_1959, "double")
  expect_type(given_name_df$n.1960_1969, "double")
  expect_type(given_name_df$n.1970_1979, "double")
  expect_type(given_name_df$n.1980_1989, "double")
  expect_type(given_name_df$n.1990_1999, "double")
  expect_type(given_name_df$n.2000_2008, "double")
  expect_type(given_name_df$ppm.1930_1959, "double")
  expect_type(given_name_df$ppm.1960_1969, "double")
  expect_type(given_name_df$ppm.1970_1979, "double")
  expect_type(given_name_df$ppm.1980_1989, "double")
  expect_type(given_name_df$ppm.1990_1999, "double")
  expect_type(given_name_df$ppm.2000_2008, "double")
  expect_type(given_name_df$name.ppm, "double")
  expect_type(given_name_df$name.uniqueness, "double")
  expect_type(given_name_df$corpus.ppm, "double")
  expect_type(given_name_df$corpus.uniqueness, "double")
  expect_type(given_name_df$name.valence, "double")
  expect_type(given_name_df$name.warmth, "double")
  expect_type(given_name_df$name.competence, "double")
})
