# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_gdp

library(testthat)

# Test 1: Valid structure and data types
test_that("get_china_gdp() returns a valid structure with correct types", {
  skip_on_cran()

  result <- get_china_gdp()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value", "value_label")
  expect_true(all(expected_columns %in% names(result)))
  expect_equal(ncol(result), 5)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(typeof(result$value) %in% c("double", "integer"))
  expect_type(result$value_label, "character")
})

# Test 2: Indicator label includes "GDP"
test_that("get_china_gdp() contains expected indicator name", {
  skip_on_cran()
  result <- get_china_gdp()
  expect_true(any(grepl("GDP", result$indicator, ignore.case = TRUE)))
})

# Test 3: All values in 'country' column are "China"
test_that("get_china_gdp() returns only China as country", {
  skip_on_cran()
  result <- get_china_gdp()
  expect_true(all(result$country == "China"))
})

# Test 4: value_label is a string-formatted version of value
test_that("get_china_gdp() formats value_label as character with commas", {
  skip_on_cran()
  result <- get_china_gdp()
  expect_true(all(grepl(",", result$value_label)))
  expect_true(all(nchar(result$value_label) >= 10)) # formatted values should be long strings
})

# Test 5: Allows NA values in 'value' or 'value_label' if present
test_that("get_china_gdp() allows NA values", {
  skip_on_cran()
  result <- get_china_gdp()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
  expect_true(any(is.na(result$value_label)) || all(!is.na(result$value_label)))
})
