# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# hk_street_names_tbl_df

library(testthat)

test_that("hk_street_names_tbl_df structure and content checks", {
  expect_s3_class(hk_street_names_tbl_df, "tbl_df")
  expect_s3_class(hk_street_names_tbl_df, "data.frame")
  expect_equal(ncol(hk_street_names_tbl_df), 21)
  expect_equal(nrow(hk_street_names_tbl_df), 4603)

  # Check first three columns are character
  expect_type(hk_street_names_tbl_df[["DC"]], "character")
  expect_type(hk_street_names_tbl_df[["StreetNames_EN"]], "character")
  expect_type(hk_street_names_tbl_df[["StreetNames_ZH"]], "character")

  # Check the remaining 18 columns are logical
  logical_cols <- setdiff(names(hk_street_names_tbl_df), c("DC", "StreetNames_EN", "StreetNames_ZH"))

  for (col in logical_cols) {
    expect_type(hk_street_names_tbl_df[[col]], "logical")
  }
})
