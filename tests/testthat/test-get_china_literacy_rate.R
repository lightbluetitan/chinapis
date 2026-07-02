# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_literacy_rate


library(testthat)

literacy_rate_data <- get_china_literacy_rate()

test_that("get_china_literacy_rate returns valid tibble structure", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  expect_s3_class(literacy_rate_data, "tbl_df")
  expect_s3_class(literacy_rate_data, "data.frame")
  expect_equal(ncol(literacy_rate_data), 4)
  expect_equal(nrow(literacy_rate_data), 13)
  expect_equal(names(literacy_rate_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_literacy_rate returns correct column types", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  expect_type(literacy_rate_data$indicator, "character")
  expect_type(literacy_rate_data$country, "character")
  expect_type(literacy_rate_data$year, "integer")
  expect_true(is.numeric(literacy_rate_data$value))
})

test_that("get_china_literacy_rate returns correct indicator and country", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  expect_true(all(literacy_rate_data$indicator == "Literacy rate, adult total (% of people ages 15 and above)"))
  expect_true(all(literacy_rate_data$country == "China"))
})

test_that("get_china_literacy_rate year column is complete and valid", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  expect_equal(sort(literacy_rate_data$year), 2010:2022)
  expect_equal(length(unique(literacy_rate_data$year)), 13)
})

test_that("get_china_literacy_rate value column handles data correctly", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  # Verificar valores no-NA
  non_na_values <- literacy_rate_data$value[!is.na(literacy_rate_data$value)]

  if(length(non_na_values) > 0) {
    expect_true(all(non_na_values >= 0))
    expect_true(all(non_na_values <= 100))
    expect_true(all(is.finite(non_na_values)))
  }
})

test_that("get_china_literacy_rate returns no duplicate rows", {
  skip_if(is.null(literacy_rate_data), "Function returned NULL")

  expect_equal(nrow(literacy_rate_data), nrow(unique(literacy_rate_data)))
})
