# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_cars_tbl_df


library(testthat)

test_that("china_cars_tbl_df has the correct class", {
  expect_s3_class(china_cars_tbl_df, c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))
})

test_that("china_cars_tbl_df has the correct number of columns", {
  expect_equal(length(china_cars_tbl_df), 20)
})

test_that("china_cars_tbl_df has the correct column names", {
  expected_names <- c(
    "id", "obsnum", "choice", "hev", "phev10", "phev20", "phev40",
    "bev75", "bev100", "bev150", "phevFastcharge", "bevFastcharge",
    "price", "opCost", "accelTime", "american", "japanese",
    "chinese", "skorean", "weights"
  )
  expect_named(china_cars_tbl_df, expected_names)
})

test_that("china_cars_tbl_df has the correct number of rows", {
  expect_equal(nrow(china_cars_tbl_df), 20160)
})
