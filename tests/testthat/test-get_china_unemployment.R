# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_unemployment


library(testthat)

unemployment_data <- get_china_unemployment()

test_that("get_china_unemployment returns valid tibble structure", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_s3_class(unemployment_data, "tbl_df")
  expect_s3_class(unemployment_data, "data.frame")
  expect_equal(ncol(unemployment_data), 4)
  expect_equal(nrow(unemployment_data), 13)
  expect_equal(names(unemployment_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_unemployment returns correct column types", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_type(unemployment_data$indicator, "character")
  expect_type(unemployment_data$country, "character")
  expect_type(unemployment_data$year, "integer")
  expect_type(unemployment_data$value, "double")
})

test_that("get_china_unemployment returns correct indicator and country", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_true(all(unemployment_data$indicator == "Unemployment, total (% of total labor force) (modeled ILO estimate)"))
  expect_true(all(unemployment_data$country == "China"))
})

test_that("get_china_unemployment year column is complete and valid", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_equal(sort(unemployment_data$year), 2010:2022)
  expect_equal(length(unique(unemployment_data$year)), 13)
})

test_that("get_china_unemployment value column is valid", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_false(any(is.na(unemployment_data$value)))
  expect_true(all(unemployment_data$value > 0))
  expect_true(all(unemployment_data$value >= 0 & unemployment_data$value <= 100))
  expect_true(all(unemployment_data$value >= 3 & unemployment_data$value <= 8))
})

test_that("get_china_unemployment returns no duplicate rows", {
  skip_if(is.null(unemployment_data), "Function returned NULL")

  expect_equal(nrow(unemployment_data), nrow(unique(unemployment_data)))
})
