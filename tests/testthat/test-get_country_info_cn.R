# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_country_info_cn


library(testthat)

country_info <- get_country_info_cn()

test_that("get_country_info_cn returns valid tibble structure", {
  skip_if(is.null(country_info), "Function returned NULL")

  expect_s3_class(country_info, "tbl_df")
  expect_s3_class(country_info, "data.frame")
  expect_equal(nrow(country_info), 1)
  expect_equal(ncol(country_info), 8)
  expect_equal(names(country_info),
               c("name_common", "name_official", "region", "subregion",
                 "capital", "area", "population", "languages"))
})

test_that("get_country_info_cn returns correct column types", {
  skip_if(is.null(country_info), "Function returned NULL")

  expect_type(country_info$name_common, "character")
  expect_type(country_info$name_official, "character")
  expect_type(country_info$region, "character")
  expect_type(country_info$subregion, "character")
  expect_type(country_info$capital, "character")
  expect_type(country_info$languages, "character")
  expect_type(country_info$area, "double")
  expect_true(is.numeric(country_info$population))
})

test_that("get_country_info_cn returns expected values for China", {
  skip_if(is.null(country_info), "Function returned NULL")

  expect_equal(country_info$name_common, "China")
  expect_equal(country_info$name_official, "People's Republic of China")
  expect_equal(country_info$region, "Asia")
  expect_equal(country_info$subregion, "Eastern Asia")
  expect_equal(country_info$capital, "Beijing")
  expect_equal(country_info$area, 9706961)
  expect_true(country_info$population > 1000000000)
  expect_true(nchar(country_info$languages) > 0)
})

test_that("get_country_info_cn has no missing critical values", {
  skip_if(is.null(country_info), "Function returned NULL")

  expect_false(is.na(country_info$name_common))
  expect_false(is.na(country_info$name_official))
  expect_false(is.na(country_info$region))
  expect_false(is.na(country_info$capital))
})
