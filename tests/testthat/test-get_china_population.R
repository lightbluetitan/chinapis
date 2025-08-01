# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_population

library(testthat)

test_that("get_china_population() returns correct structure and types", {
  result <- get_china_population()

  # Check result is not NULL
  expect_false(is.null(result))

  # Check result is a data.frame (tibble is acceptable as subclass)
  expect_s3_class(result, "data.frame")

  # Expected column names
  expected_cols <- c("indicator", "country", "year", "value", "value_label")
  expect_named(result, expected_cols)

  # Check column types
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(is.numeric(result$value) || is.integer(result$value))
  expect_type(result$value_label, "character")

  # All country values must be "China"
  expect_true(all(result$country == "China"))

  # Years must be within 2010 to 2022
  expect_true(all(result$year %in% 2010:2022))

  # No NA in year column
  expect_false(any(is.na(result$year)))

  # Length check (should be 13 rows for years 2010–2022)
  expect_equal(nrow(result), 13)
})
