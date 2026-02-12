# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_child_mortality

library(testthat)

test_that("get_china_child_mortality() returns valid structure and correct data types", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value")
  expect_named(result, expected_columns)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(typeof(result$value) %in% c("double", "integer"))
})

test_that("get_china_child_mortality() contains the correct indicator label", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_true(
    any(grepl("under-5", result$indicator, ignore.case = TRUE))
  )
})

test_that("get_china_child_mortality() allows NA values in value column", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_true(
    any(is.na(result$value)) || all(!is.na(result$value))
  )
})

test_that("get_china_child_mortality() returns only data for China", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_true(all(result$country == "China"))
})

test_that("get_china_child_mortality() returns years within expected range", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_true(all(result$year >= 2010 & result$year <= 2022))
})
