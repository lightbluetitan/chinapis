# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_admin_divisions_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_admin_divisions_df is a data frame", {
  expect_s3_class(china_admin_divisions_df, "data.frame")
})

# Test 2: Confirm it has 2 columns
test_that("china_admin_divisions_df has 2 columns", {
  expect_equal(length(china_admin_divisions_df), 2)
})

# Test 3: Confirm it has 3212 rows
test_that("china_admin_divisions_df has 3212 rows", {
  expect_equal(nrow(china_admin_divisions_df), 3212)
})

# Test 4: Confirm column names are correct
test_that("china_admin_divisions_df has correct column names", {
  expect_named(china_admin_divisions_df, c("ID", "name"))
})

# Test 5: Confirm column types are as expected
test_that("china_admin_divisions_df columns have correct types", {
  expect_type(china_admin_divisions_df$ID, "integer")
  expect_type(china_admin_divisions_df$name, "character")
})

