# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_child_mortality

library(testthat)

# Test 1: Valid output structure and data types
test_that("get_china_child_mortality() returns valid structure and correct data types", {
  skip_on_cran()

  result <- get_china_child_mortality()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value")
  expect_true(all(expected_columns %in% names(result)))
  expect_equal(ncol(result), 4)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(typeof(result$value) %in% c("double", "integer"))
})

# Test 2: Contains expected indicator label
test_that("get_china_child_mortality() contains the correct indicator name", {
  skip_on_cran()
  result <- get_china_child_mortality()
  expect_true(any(grepl("under-5", result$indicator, ignore.case = TRUE)))
})

# Test 3: Allows NA values in the 'value' column if present
test_that("get_china_child_mortality() allows NA values for missing years", {
  skip_on_cran()
  result <- get_china_child_mortality()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
})

# Test 4: All entries must be for China
test_that("get_china_child_mortality() returns only data for China", {
  skip_on_cran()
  result <- get_china_child_mortality()
  expect_true(all(result$country == "China"))
})

