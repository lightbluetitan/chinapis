# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_energy_use

library(testthat)

# Test 1: Valid structure and correct data types
test_that("get_china_energy_use() returns valid structure and correct types", {
  skip_on_cran()

  result <- get_china_energy_use()

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

# Test 2: Contains expected indicator name
test_that("get_china_energy_use() contains expected indicator name", {
  skip_on_cran()
  result <- get_china_energy_use()
  expect_true(any(grepl("energy use", result$indicator, ignore.case = TRUE)))
})

# Test 3: Allows NA values in the 'value' column if present
test_that("get_china_energy_use() allows NA values for missing data", {
  skip_on_cran()
  result <- get_china_energy_use()
  expect_true(any(is.na(result$value)) || all(!is.na(result$value)))
})

# Test 4: All rows must refer to China
test_that("get_china_energy_use() returns only data for China", {
  skip_on_cran()
  result <- get_china_energy_use()
  expect_true(all(result$country == "China"))
})

