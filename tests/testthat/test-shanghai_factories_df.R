# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# shanghai_factories_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("shanghai_factories_df is a data frame", {
  expect_s3_class(shanghai_factories_df, "data.frame")
})

# Test 2: Confirm it has 4 columns
test_that("shanghai_factories_df has 4 columns", {
  expect_equal(length(shanghai_factories_df), 4)
})

# Test 3: Confirm it has 17 rows
test_that("shanghai_factories_df has 17 rows", {
  expect_equal(nrow(shanghai_factories_df), 17)
})

# Test 4: Confirm column names are correct
test_that("shanghai_factories_df has correct column names", {
  expect_named(shanghai_factories_df, c(
    "Output", "SI", "SP", "I"
  ))
})

# Test 5: Confirm column types are as expected
test_that("shanghai_factories_df columns have correct types", {
  expect_type(shanghai_factories_df$Output, "double")
  expect_type(shanghai_factories_df$SI, "double")
  expect_type(shanghai_factories_df$SP, "double")
  expect_type(shanghai_factories_df$I, "double")
})
