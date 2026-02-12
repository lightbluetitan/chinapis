# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_cpi


library(testthat)

china_cpi_data <- get_china_cpi()

test_that("get_china_cpi returns valid tibble structure", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_s3_class(china_cpi_data, "tbl_df")
  expect_s3_class(china_cpi_data, "data.frame")
  expect_equal(ncol(china_cpi_data), 4)
  expect_equal(nrow(china_cpi_data), 13)
  expect_equal(names(china_cpi_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_cpi returns correct column types", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_type(china_cpi_data$indicator, "character")
  expect_type(china_cpi_data$country, "character")
  expect_type(china_cpi_data$year, "integer")
  expect_type(china_cpi_data$value, "double")
})

test_that("get_china_cpi returns correct indicator and country", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_true(all(china_cpi_data$indicator == "Consumer price index (2010 = 100)"))
  expect_true(all(china_cpi_data$country == "China"))
})

test_that("get_china_cpi year column is complete and valid", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_equal(sort(china_cpi_data$year), 2010:2022)
  expect_equal(length(unique(china_cpi_data$year)), 13)
})

test_that("get_china_cpi value column is valid", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_false(any(is.na(china_cpi_data$value)))
  expect_true(all(china_cpi_data$value > 0))
  expect_equal(china_cpi_data$value[china_cpi_data$year == 2010], 100)
})

test_that("get_china_cpi shows realistic CPI progression", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  value_2022 <- china_cpi_data$value[china_cpi_data$year == 2022]
  value_2010 <- china_cpi_data$value[china_cpi_data$year == 2010]
  expect_true(value_2022 > value_2010)
})

test_that("get_china_cpi returns no duplicate rows", {
  skip_if(is.null(china_cpi_data), "Function returned NULL")

  expect_equal(nrow(china_cpi_data), nrow(unique(china_cpi_data)))
})
