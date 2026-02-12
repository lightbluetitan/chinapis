# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_hospital_beds


library(testthat)

hospital_beds_data <- get_china_hospital_beds()

test_that("get_china_hospital_beds returns valid tibble structure", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  expect_s3_class(hospital_beds_data, "tbl_df")
  expect_s3_class(hospital_beds_data, "data.frame")
  expect_equal(ncol(hospital_beds_data), 4)
  expect_equal(nrow(hospital_beds_data), 13)
  expect_equal(names(hospital_beds_data), c("indicator", "country", "year", "value"))
})

test_that("get_china_hospital_beds returns correct column types", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  expect_type(hospital_beds_data$indicator, "character")
  expect_type(hospital_beds_data$country, "character")
  expect_type(hospital_beds_data$year, "integer")
  expect_type(hospital_beds_data$value, "double")
})

test_that("get_china_hospital_beds returns correct indicator and country", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  expect_true(all(hospital_beds_data$indicator == "Hospital beds (per 1,000 people)"))
  expect_true(all(hospital_beds_data$country == "China"))
  expect_equal(length(unique(hospital_beds_data$indicator)), 1)
  expect_equal(length(unique(hospital_beds_data$country)), 1)
})

test_that("get_china_hospital_beds year column is complete and valid", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  expect_true(all(hospital_beds_data$year %in% 2010:2022))
  expect_false(any(is.na(hospital_beds_data$year)))
  expect_equal(length(unique(hospital_beds_data$year)), 13)
})

test_that("get_china_hospital_beds value column handles data correctly", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  # Todos los valores deben ser finitos o NA
  expect_true(all(is.finite(hospital_beds_data$value) | is.na(hospital_beds_data$value)))

  # Verificar valores no-NA
  non_na_values <- hospital_beds_data$value[!is.na(hospital_beds_data$value)]
  if(length(non_na_values) > 0) {
    expect_true(all(non_na_values > 0))
  }
})

test_that("get_china_hospital_beds returns no duplicate rows", {
  skip_if(is.null(hospital_beds_data), "Function returned NULL")

  expect_equal(nrow(hospital_beds_data), nrow(unique(hospital_beds_data)))
  expect_equal(nrow(hospital_beds_data), length(unique(hospital_beds_data$year)))
})
