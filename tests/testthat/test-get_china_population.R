# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_population


library(testthat)

population_data <- get_china_population()

test_that("get_china_population returns valid tibble structure", {
  skip_if(is.null(population_data), "Function returned NULL")

  expect_s3_class(population_data, "tbl_df")
  expect_s3_class(population_data, "data.frame")
  expect_equal(ncol(population_data), 5)
  expect_equal(nrow(population_data), 13)
  expect_equal(names(population_data), c("indicator", "country", "year", "value", "value_label"))
})

test_that("get_china_population returns correct column types", {
  skip_if(is.null(population_data), "Function returned NULL")

  expect_type(population_data$indicator, "character")
  expect_type(population_data$country, "character")
  expect_type(population_data$year, "integer")
  expect_true(is.numeric(population_data$value))
  expect_type(population_data$value_label, "character")
})

test_that("get_china_population returns correct indicator and country", {
  skip_if(is.null(population_data), "Function returned NULL")

  expect_true(all(population_data$indicator == "Population, total"))
  expect_true(all(population_data$country == "China"))
})

test_that("get_china_population year column is complete and valid", {
  skip_if(is.null(population_data), "Function returned NULL")

  expect_equal(sort(population_data$year), 2010:2022)
  expect_equal(length(unique(population_data$year)), 13)
  expect_false(any(is.na(population_data$year)))
})

test_that("get_china_population value and value_label are correctly formatted", {
  skip_if(is.null(population_data), "Function returned NULL")

  # Verificar valores no-NA
  non_na_values <- population_data$value[!is.na(population_data$value)]
  if(length(non_na_values) > 0) {
    expect_true(all(non_na_values > 0))
    expect_true(all(is.finite(non_na_values)))
    # Población de China debería estar en rango razonable
    expect_true(all(non_na_values > 1e9))
    expect_true(all(non_na_values < 2e9))
  }

  # Verificar formato de value_label para valores no-NA
  non_na_labels <- population_data$value_label[!is.na(population_data$value)]
  if(length(non_na_labels) > 0) {
    expect_true(all(grepl(",", non_na_labels)))
  }
})

test_that("get_china_population returns no duplicate rows", {
  skip_if(is.null(population_data), "Function returned NULL")

  expect_equal(nrow(population_data), nrow(unique(population_data)))
})
