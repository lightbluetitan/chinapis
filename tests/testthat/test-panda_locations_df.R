# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# panda_locations_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("panda_locations_df is a data frame", {
  expect_s3_class(panda_locations_df, "data.frame")
})

# Test 2: Confirm it has 4 columns
test_that("panda_locations_df has 4 columns", {
  expect_equal(length(panda_locations_df), 4)
})

# Test 3: Confirm it has 147 rows
test_that("panda_locations_df has 147 rows", {
  expect_equal(nrow(panda_locations_df), 147)
})

# Test 4: Confirm column names are correct
test_that("panda_locations_df has correct column names", {
  expect_named(panda_locations_df, c("time", "x", "y", "z"))
})

# Test 5: Confirm column types are correct
test_that("panda_locations_df columns have correct types", {
  expect_type(panda_locations_df$time, "double")
  expect_type(panda_locations_df$x, "double")
  expect_type(panda_locations_df$y, "double")
  expect_type(panda_locations_df$z, "integer")
})
