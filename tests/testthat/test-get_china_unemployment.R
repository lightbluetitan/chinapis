# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_unemployment

library(testthat)

# Execute function once for all tests
china_unemployment_data <- get_china_unemployment()

# Test 1: Confirm function returns a tibble (which is also a data frame)
test_that("get_china_unemployment returns a tibble/data frame", {
  expect_s3_class(china_unemployment_data, "tbl_df")
  expect_s3_class(china_unemployment_data, "data.frame")
})

# Test 2: Confirm it has exactly 4 columns
test_that("get_china_unemployment returns data with exactly 4 columns", {
  expect_equal(ncol(china_unemployment_data), 4)
})

# Test 3: Confirm it has exactly 13 rows (2010-2022)
test_that("get_china_unemployment returns data with exactly 13 rows", {
  expect_equal(nrow(china_unemployment_data), 13)
})

# Test 4: Confirm column names are exactly as specified
test_that("get_china_unemployment returns data with correct column names", {
  expect_equal(
    names(china_unemployment_data),
    c("indicator", "country", "year", "value")
  )
})

# Test 5: Confirm column types are correct
test_that("get_china_unemployment returns data with correct column types", {
  expect_type(china_unemployment_data$indicator, "character")
  expect_type(china_unemployment_data$country, "character")
  expect_type(china_unemployment_data$year, "integer")
  expect_type(china_unemployment_data$value, "double")
})

# Test 6: Confirm indicator column contains expected value
test_that("get_china_unemployment indicator column contains correct value", {
  expect_true(all(china_unemployment_data$indicator == "Unemployment, total (% of total labor force) (modeled ILO estimate)"))
})

# Test 7: Confirm country column contains only "China"
test_that("get_china_unemployment country column contains only China", {
  expect_true(all(china_unemployment_data$country == "China"))
})

# Test 8: Confirm year range is 2010-2022 and all years are present
test_that("get_china_unemployment year column covers 2010-2022 completely", {
  expected_years <- 2010:2022
  actual_years <- sort(china_unemployment_data$year)
  expect_equal(actual_years, expected_years)
})

# Test 9: Confirm all years are unique (no duplicates)
test_that("get_china_unemployment year column has no duplicate years", {
  expect_equal(length(unique(china_unemployment_data$year)), 13)
})

# Test 10: Confirm value column has no missing values
test_that("get_china_unemployment value column has no missing values", {
  expect_false(any(is.na(china_unemployment_data$value)))
})

# Test 11: Confirm value column contains only positive numbers (unemployment rate should be positive)
test_that("get_china_unemployment value column contains only positive values", {
  expect_true(all(china_unemployment_data$value > 0))
})

# Test 12: Confirm unemployment values are reasonable percentages (between 0 and 100)
test_that("get_china_unemployment values are within reasonable percentage range", {
  expect_true(all(china_unemployment_data$value >= 0))
  expect_true(all(china_unemployment_data$value <= 100))
})

# Test 13: Confirm unemployment values are within realistic range for China (typically 3-8%)
test_that("get_china_unemployment values are within realistic range for China", {
  expect_true(all(china_unemployment_data$value >= 3))
  expect_true(all(china_unemployment_data$value <= 8))
})

# Test 14: Confirm highest unemployment rate occurred in 2020 (COVID-19 impact)
test_that("get_china_unemployment shows expected COVID-19 impact in 2020", {
  max_unemployment <- max(china_unemployment_data$value)
  year_of_max <- china_unemployment_data$year[china_unemployment_data$value == max_unemployment]
  expect_equal(year_of_max, 2020)
  expect_equal(max_unemployment, 5.0)
})

# Test 15: Confirm no duplicate rows exist
test_that("get_china_unemployment returns no duplicate rows", {
  expect_equal(nrow(china_unemployment_data), nrow(unique(china_unemployment_data)))
})

# Test 16: Confirm unemployment values show stability (low variance typical for China)
test_that("get_china_unemployment values show typical stability for China", {
  unemployment_variance <- var(china_unemployment_data$value)
  # China typically has low unemployment variance compared to other countries
  expect_true(unemployment_variance < 1.0)
})
