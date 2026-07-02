# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_life_expectancy


library(testthat)

life_expectancy_data <- get_china_life_expectancy()

test_that("get_china_life_expectancy returns valid tibble structure", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_s3_class(life_expectancy_data, "tbl_df")
  expect_s3_class(life_expectancy_data, "data.frame")
  expect_equal(ncol(life_expectancy_data), 4)
  expect_equal(nrow(life_expectancy_data), 13)
  expect_equal(names(life_expectancy_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_life_expectancy returns correct column types", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_type(life_expectancy_data$indicator, "character")
  expect_type(life_expectancy_data$country, "character")
  expect_type(life_expectancy_data$year, "integer")
  expect_type(life_expectancy_data$value, "double")
})

test_that("get_china_life_expectancy returns correct indicator and country", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_true(all(life_expectancy_data$indicator == "Life expectancy at birth, total (years)"))
  expect_true(all(life_expectancy_data$country == "China"))
})

test_that("get_china_life_expectancy year column is complete and valid", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_equal(sort(life_expectancy_data$year), 2010:2022)
  expect_equal(length(unique(life_expectancy_data$year)), 13)
})

test_that("get_china_life_expectancy value column is valid", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_false(any(is.na(life_expectancy_data$value)))
  expect_true(all(life_expectancy_data$value > 0))
  expect_true(all(life_expectancy_data$value >= 50))
  expect_true(all(life_expectancy_data$value <= 100))
})

test_that("get_china_life_expectancy returns no duplicate rows", {
  skip_if(is.null(life_expectancy_data), "Function returned NULL")

  expect_equal(nrow(life_expectancy_data), nrow(unique(life_expectancy_data)))
})
