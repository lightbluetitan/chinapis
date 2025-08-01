# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# hk_districts_tbl_df

library(testthat)

test_that("hk_districts_tbl_df is a tibble with correct structure", {
  # Check class
  expect_s3_class(hk_districts_tbl_df, "tbl_df")
  expect_s3_class(hk_districts_tbl_df, "data.frame")

  # Check dimensions
  expect_equal(ncol(hk_districts_tbl_df), 6)
  expect_equal(nrow(hk_districts_tbl_df), 18)

  # Check column names
  expected_names <- c("Code", "District_EN", "District_ZH", "Region_EN", "Region_ZH", "Abbrev")
  expect_named(hk_districts_tbl_df, expected_names)

  # Check column types
  expect_type(hk_districts_tbl_df$Code, "character")
  expect_type(hk_districts_tbl_df$District_EN, "character")
  expect_type(hk_districts_tbl_df$District_ZH, "character")
  expect_type(hk_districts_tbl_df$Region_EN, "character")
  expect_type(hk_districts_tbl_df$Region_ZH, "character")
  expect_type(hk_districts_tbl_df$Abbrev, "character")
})
