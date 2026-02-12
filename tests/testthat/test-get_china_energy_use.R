# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_energy_use


library(testthat)

energy_use_data <- get_china_energy_use()

test_that("get_china_energy_use returns valid tibble structure", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  expect_s3_class(energy_use_data, "tbl_df")
  expect_s3_class(energy_use_data, "data.frame")
  expect_equal(ncol(energy_use_data), 4)
  expect_equal(nrow(energy_use_data), 13)
  expect_equal(names(energy_use_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_energy_use returns correct column types", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  expect_type(energy_use_data$indicator, "character")
  expect_type(energy_use_data$country, "character")
  expect_type(energy_use_data$year, "integer")
  expect_true(is.numeric(energy_use_data$value))
})

test_that("get_china_energy_use returns correct indicator and country", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  expect_true(any(grepl("energy use", energy_use_data$indicator, ignore.case = TRUE)))
  expect_true(all(energy_use_data$country == "China"))
})

test_that("get_china_energy_use year column is complete and valid", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  expect_equal(sort(energy_use_data$year), 2010:2022)
  expect_equal(length(unique(energy_use_data$year)), 13)
})

test_that("get_china_energy_use value column handles data correctly", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  # Los valores pueden ser NA (datos faltantes son válidos según la API)
  non_na_values <- energy_use_data$value[!is.na(energy_use_data$value)]

  if(length(non_na_values) > 0) {
    expect_true(all(non_na_values > 0))
    expect_true(all(is.finite(non_na_values)))
  }
})

test_that("get_china_energy_use returns no duplicate rows", {
  skip_if(is.null(energy_use_data), "Function returned NULL")

  expect_equal(nrow(energy_use_data), nrow(unique(energy_use_data)))
})
