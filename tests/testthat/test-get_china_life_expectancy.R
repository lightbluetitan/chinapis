# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_life_expectancy

library(testthat)

test_that("get_china_life_expectancy returns a tibble with correct structure and values", {
  result <- get_china_life_expectancy()

  # Check object type
  expect_s3_class(result, "tbl_df")

  # Check number of rows (2010–2022 = 13 years)
  expect_equal(nrow(result), 13)

  # Check column names
  expected_names <- c("indicator", "country", "year", "value")
  expect_named(result, expected_names)

  # Check column types
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")

  # Check unique values
  expect_true(all(result$country == "China"))
  expect_true(all(result$indicator == "Life expectancy at birth, total (years)"))
  expect_true(all(result$year %in% 2010:2022))
  expect_true(all(result$value > 0))

  # Check for missing values
  expect_false(any(is.na(result$value)))
})
