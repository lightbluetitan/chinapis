# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# shanghai_pm25_df

library(testthat)

test_that("shanghai_pm25_df: object exists", {
  expect_true(exists("shanghai_pm25_df"))
})

test_that("shanghai_pm25_df: correct class", {
  expect_s3_class(shanghai_pm25_df, "data.frame")
  expect_false("tbl_df" %in% class(shanghai_pm25_df))  # ensure it's not a tibble
})

test_that("shanghai_pm25_df: correct dimensions", {
  expect_equal(nrow(shanghai_pm25_df), 5000)
  expect_equal(ncol(shanghai_pm25_df), 10)
})

test_that("shanghai_pm25_df: correct column names and order", {
  expected_names <- c(
    "PM_Jingan", "PM_US.Post", "PM_Xuhui", "DEWP", "HUMI",
    "PRES", "TEMP", "Iws", "precipitation", "Iprec"
  )
  expect_named(shanghai_pm25_df, expected_names)
})

test_that("shanghai_pm25_df: correct column types", {
  expect_type(shanghai_pm25_df$PM_Jingan, "integer")
  expect_type(shanghai_pm25_df$PM_US.Post, "integer")
  expect_type(shanghai_pm25_df$PM_Xuhui, "integer")
  expect_type(shanghai_pm25_df$DEWP, "integer")
  expect_type(shanghai_pm25_df$HUMI, "double")
  expect_type(shanghai_pm25_df$PRES, "double")
  expect_type(shanghai_pm25_df$TEMP, "integer")
  expect_type(shanghai_pm25_df$Iws, "double")
  expect_type(shanghai_pm25_df$precipitation, "double")
  expect_type(shanghai_pm25_df$Iprec, "double")
})
