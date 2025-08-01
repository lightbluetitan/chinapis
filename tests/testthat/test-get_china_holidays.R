# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_holidays

library(testthat)

test_that("get_china_holidays() returns a tibble with expected structure and types", {
  skip_on_cran()
  result <- get_china_holidays(2025)

  # Check class
  expect_s3_class(result, "tbl_df")

  # Check dimensions
  expect_gt(nrow(result), 0)
  expect_equal(ncol(result), 3)

  # Check column names
  expected_names <- c("date", "local_name", "name")
  expect_named(result, expected_names)

  # Check column types
  expect_s3_class(result$date, "Date")
  expect_type(result$local_name, "character")
  expect_type(result$name, "character")
})

test_that("get_china_holidays() includes expected 2025 holidays", {
  skip_on_cran()
  result <- get_china_holidays(2025)

  # Expected holidays in English
  expected_english_names <- c(
    "New Year's Day",
    "Chinese New Year (Spring Festival)",
    "Qingming Festival (Tomb-Sweeping Day)",
    "Labour Day",
    "Dragon Boat Festival",
    "National Day",
    "Mid-Autumn Festival"
  )

  # Check that all expected holidays are present
  expect_true(all(expected_english_names %in% result$name))
})

test_that("get_china_holidays() fails for invalid year input", {
  expect_error(get_china_holidays("twenty twenty-five"))
  expect_error(get_china_holidays(999))  # unlikely valid year
  expect_error(get_china_holidays(3000)) # future year may not yet have data
})
