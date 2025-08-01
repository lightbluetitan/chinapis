# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# bj_air_quality_tbl_df

library(testthat)

test_that("bj_air_quality_tbl_df: object exists", {
  expect_true(exists("bj_air_quality_tbl_df"))
})

test_that("bj_air_quality_tbl_df: correct classes", {
  expect_s3_class(bj_air_quality_tbl_df, "tbl_df")
  expect_s3_class(bj_air_quality_tbl_df, "tbl")
  expect_s3_class(bj_air_quality_tbl_df, "data.frame")
})

test_that("bj_air_quality_tbl_df: correct dimensions", {
  expect_equal(nrow(bj_air_quality_tbl_df), 7680)
  expect_equal(ncol(bj_air_quality_tbl_df), 6)
})

test_that("bj_air_quality_tbl_df: correct column names", {
  expected_names <- c("DATE", "HOUR", "NO2", "O3", "TEMP", "WIND")
  expect_named(bj_air_quality_tbl_df, expected_names)
})

test_that("bj_air_quality_tbl_df: correct column types", {
  expect_s3_class(bj_air_quality_tbl_df$DATE, "Date")
  expect_type(bj_air_quality_tbl_df$HOUR, "integer")
  expect_type(bj_air_quality_tbl_df$NO2, "double")
  expect_type(bj_air_quality_tbl_df$O3, "double")
  expect_type(bj_air_quality_tbl_df$TEMP, "double")
  expect_type(bj_air_quality_tbl_df$WIND, "double")
})
