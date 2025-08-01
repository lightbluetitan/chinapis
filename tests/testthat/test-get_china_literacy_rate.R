# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_literacy_rate

library(testthat)

test_that("get_china_literacy_rate() returns valid structure and types", {
  result <- get_china_literacy_rate()

  # Check that the result is a tibble
  expect_s3_class(result, "tbl_df")

  # Check the column names
  expect_named(result, c("indicator", "country", "year", "value"))

  # Check that all columns exist and are of correct type
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(is.numeric(result$value) || is.integer(result$value))  # to allow integer or numeric

  # Check that all country values are "China"
  expect_true(all(result$country == "China"))

  # Check that indicator name is consistent
  expect_true(all(result$indicator == "Literacy rate, adult total (% of people ages 15 and above)"))

  # Check that years are within the expected range
  expect_true(all(result$year >= 2010 & result$year <= 2022))

  # Check that the number of rows is correct (should be 13 for 2010–2022)
  expect_equal(nrow(result), 13)

  # Check that there are NAs allowed in value column (not a failure if present)
  expect_true(any(is.na(result$value)) || any(!is.na(result$value)))
})
