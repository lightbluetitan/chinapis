# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_cpi

library(testthat)

# Execute function once for all tests
china_cpi_data <- get_china_cpi()

# Test 1: Confirm function returns a tibble (which is also a data frame)
test_that("get_china_cpi returns a tibble/data frame", {
  expect_s3_class(china_cpi_data, "tbl_df")
  expect_s3_class(china_cpi_data, "data.frame")
})

# Test 2: Confirm it has exactly 4 columns
test_that("get_china_cpi returns data with exactly 4 columns", {
  expect_equal(ncol(china_cpi_data), 4)
})

# Test 3: Confirm it has exactly 13 rows (2010-2022)
test_that("get_china_cpi returns data with exactly 13 rows", {
  expect_equal(nrow(china_cpi_data), 13)
})

# Test 4: Confirm column names are exactly as specified
test_that("get_china_cpi returns data with correct column names", {
  expect_equal(
    names(china_cpi_data),
    c("indicator", "country", "year", "value")
  )
})

# Test 5: Confirm column types are correct
test_that("get_china_cpi returns data with correct column types", {
  expect_type(china_cpi_data$indicator, "character")
  expect_type(china_cpi_data$country, "character")
  expect_type(china_cpi_data$year, "integer")
  expect_type(china_cpi_data$value, "double")
})

# Test 6: Confirm indicator column contains expected value
test_that("get_china_cpi indicator column contains correct value", {
  expect_true(all(china_cpi_data$indicator == "Consumer price index (2010 = 100)"))
})

# Test 7: Confirm country column contains only "China"
test_that("get_china_cpi country column contains only China", {
  expect_true(all(china_cpi_data$country == "China"))
})

# Test 8: Confirm year range is 2010-2022 and all years are present
test_that("get_china_cpi year column covers 2010-2022 completely", {
  expected_years <- 2010:2022
  actual_years <- sort(china_cpi_data$year)
  expect_equal(actual_years, expected_years)
})

# Test 9: Confirm all years are unique (no duplicates)
test_that("get_china_cpi year column has no duplicate years", {
  expect_equal(length(unique(china_cpi_data$year)), 13)
})

# Test 10: Confirm value column has no missing values
test_that("get_china_cpi value column has no missing values", {
  expect_false(any(is.na(china_cpi_data$value)))
})

# Test 11: Confirm value column contains only positive numbers (CPI should be positive)
test_that("get_china_cpi value column contains only positive values", {
  expect_true(all(china_cpi_data$value > 0))
})

# Test 12: Confirm 2010 baseline value is 100 (by definition of CPI 2010=100)
test_that("get_china_cpi shows 2010 baseline value as 100", {
  baseline_value <- china_cpi_data$value[china_cpi_data$year == 2010]
  expect_equal(baseline_value, 100)
})

# Test 13: Confirm CPI values show logical progression (generally increasing trend)
test_that("get_china_cpi values show realistic CPI progression", {
  # Sort by year ascending
  sorted_data <- china_cpi_data[order(china_cpi_data$year), ]
  # CPI should generally increase over time (inflation)
  # Check that 2022 value is higher than 2010 value
  expect_true(sorted_data$value[sorted_data$year == 2022] > sorted_data$value[sorted_data$year == 2010])
})

# Test 14: Confirm no duplicate rows exist
test_that("get_china_cpi returns no duplicate rows", {
  expect_equal(nrow(china_cpi_data), nrow(unique(china_cpi_data)))
})
