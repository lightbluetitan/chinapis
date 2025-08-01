# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# COVID19_HongKong_df

library(testthat)

test_that("COVID19_HongKong_df has correct structure", {
  # Check that the object exists and is a data frame
  expect_true(exists("COVID19_HongKong_df"))
  expect_s3_class(COVID19_HongKong_df, "data.frame")

  # Check number of columns and rows
  expect_equal(ncol(COVID19_HongKong_df), 2)
  expect_equal(nrow(COVID19_HongKong_df), 290)

  # Check column names
  expect_named(COVID19_HongKong_df, c("obs", "type"))

  # Check types of each column
  expect_type(COVID19_HongKong_df$obs, "double")
  expect_type(COVID19_HongKong_df$type, "character")
})
