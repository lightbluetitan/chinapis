# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_corruption_tbl_df


library(testthat)

# Test 1: Confirm the object is a tibble (tbl_df)
test_that("china_corruption_tbl_df is a tibble", {
  expect_s3_class(china_corruption_tbl_df, "tbl_df")
  expect_s3_class(china_corruption_tbl_df, "tbl")
  expect_s3_class(china_corruption_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 6 columns
test_that("china_corruption_tbl_df has 6 columns", {
  expect_equal(length(china_corruption_tbl_df), 6)
})

# Test 3: Confirm it has exactly 10 rows
test_that("china_corruption_tbl_df has 10 rows", {
  expect_equal(nrow(china_corruption_tbl_df), 10)
})

# Test 4: Confirm column names are correct
test_that("china_corruption_tbl_df has correct column names", {
  expect_named(china_corruption_tbl_df, c(
    "province", "prefecture", "county",
    "province_id", "prefecture_id", "county_id"
  ))
})

# Test 5: Confirm column types are correct
test_that("china_corruption_tbl_df columns have correct types", {
  expect_type(china_corruption_tbl_df$province, "double")
  expect_type(china_corruption_tbl_df$prefecture, "character")
  expect_type(china_corruption_tbl_df$county, "character")
  expect_type(china_corruption_tbl_df$province_id, "double")
  expect_type(china_corruption_tbl_df$prefecture_id, "double")
  expect_type(china_corruption_tbl_df$county_id, "double")
})
