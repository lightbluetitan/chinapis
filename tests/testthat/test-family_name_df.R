# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# family_name_df


library(testthat)

# Test 1: Confirm it is a data frame
test_that("family_name_df is a data frame", {
  expect_s3_class(family_name_df, "data.frame")
})

# Test 2: Confirm it has 7 columns
test_that("family_name_df has 7 columns", {
  expect_equal(length(family_name_df), 7)
})

# Test 3: Confirm column names are correct
test_that("family_name_df has correct column names", {
  expect_named(family_name_df, c(
    "surname", "compound", "initial", "initial.rank",
    "n.1930_2008", "ppm.1930_2008", "surname.uniqueness"
  ))
})
