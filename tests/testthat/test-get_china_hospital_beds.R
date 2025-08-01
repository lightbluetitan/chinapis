# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_hospital_beds

library(testthat)

test_that("get_china_hospital_beds returns a tibble with correct structure and types", {
  result <- get_china_hospital_beds()

  # Basic structure checks
  expect_s3_class(result, "tbl_df")
  expect_named(result, c("indicator", "country", "year", "value"))

  # Column type checks
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_china_hospital_beds returns data only for China", {
  result <- get_china_hospital_beds()
  expect_true(all(result$country == "China"))
})

test_that("get_china_hospital_beds returns data for correct years (2010-2022)", {
  result <- get_china_hospital_beds()
  expect_true(all(result$year %in% 2010:2022))
})

test_that("get_china_hospital_beds returns 13 rows (one per year)", {
  result <- get_china_hospital_beds()
  expect_equal(nrow(result), 13)
})

test_that("get_china_hospital_beds includes the correct indicator label", {
  result <- get_china_hospital_beds()
  expect_true(all(result$indicator == "Hospital beds (per 1,000 people)"))
})

test_that("get_china_hospital_beds allows for missing values (e.g., NA)", {
  result <- get_china_hospital_beds()
  expect_true(any(is.na(result$value)))
})

test_that("get_china_hospital_beds: no year value is NA", {
  result <- get_china_hospital_beds()
  expect_false(any(is.na(result$year)))
})

test_that("get_china_hospital_beds returns a numeric vector in the value column", {
  result <- get_china_hospital_beds()
  expect_type(result$value, "double")
})

test_that("get_china_hospital_beds: all 'value' entries are finite or NA", {
  result <- get_china_hospital_beds()
  expect_true(all(is.finite(result$value) | is.na(result$value)))
})

test_that("get_china_hospital_beds: years are sorted in descending order", {
  result <- get_china_hospital_beds()
  expect_equal(result$year, sort(result$year, decreasing = TRUE))
})

test_that("get_china_hospital_beds: indicator is consistent across all rows", {
  result <- get_china_hospital_beds()
  expect_equal(length(unique(result$indicator)), 1)
})

test_that("get_china_hospital_beds: country is consistent across all rows", {
  result <- get_china_hospital_beds()
  expect_equal(length(unique(result$country)), 1)
})
