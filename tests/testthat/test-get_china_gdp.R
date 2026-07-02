# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_gdp


library(testthat)

gdp_data <- get_china_gdp()

test_that("get_china_gdp returns valid tibble structure", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  expect_s3_class(gdp_data, "tbl_df")
  expect_s3_class(gdp_data, "data.frame")
  expect_equal(ncol(gdp_data), 5)
  expect_equal(nrow(gdp_data), 13)
  expect_equal(names(gdp_data), c("indicator", "country", "year", "value", "value_label"))
})

test_that("get_china_gdp returns correct column types", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  expect_type(gdp_data$indicator, "character")
  expect_type(gdp_data$country, "character")
  expect_type(gdp_data$year, "integer")
  expect_true(is.numeric(gdp_data$value))
  expect_type(gdp_data$value_label, "character")
})

test_that("get_china_gdp returns correct indicator and country", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  expect_true(any(grepl("GDP", gdp_data$indicator, ignore.case = TRUE)))
  expect_true(all(gdp_data$country == "China"))
})

test_that("get_china_gdp year column is complete and valid", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  expect_equal(sort(gdp_data$year), 2010:2022)
  expect_equal(length(unique(gdp_data$year)), 13)
})

test_that("get_china_gdp value and value_label are correctly formatted", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  # Verificar valores no-NA
  non_na_values <- gdp_data$value[!is.na(gdp_data$value)]
  if(length(non_na_values) > 0) {
    expect_true(all(non_na_values > 0))
    expect_true(all(is.finite(non_na_values)))
  }

  # Verificar formato de value_label para valores no-NA
  non_na_labels <- gdp_data$value_label[!is.na(gdp_data$value)]
  if(length(non_na_labels) > 0) {
    expect_true(all(grepl(",", non_na_labels)))
  }
})

test_that("get_china_gdp returns no duplicate rows", {
  skip_if(is.null(gdp_data), "Function returned NULL")

  expect_equal(nrow(gdp_data), nrow(unique(gdp_data)))
})
