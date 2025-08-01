# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_country_info_cn


library(testthat)

test_that("get_country_info_cn() returns a data frame with correct structure for 'China'", {
  skip_on_cran()
  result <- get_country_info_cn("China")

  expect_s3_class(result, "data.frame")
  expect_named(result, c(
    "name_common", "name_official", "region", "subregion",
    "capital", "area", "population", "languages"
  ))

  expect_equal(result$name_common, "China")
  expect_equal(result$name_official, "People's Republic of China")
  expect_equal(result$region, "Asia")
  expect_equal(result$subregion, "Eastern Asia")
  expect_true("Beijing" %in% result$capital)
  expect_true(is.numeric(result$area))
  expect_true(is.numeric(result$population))
  expect_true(grepl("Chinese", result$languages))
})

test_that("get_country_info_cn() returns correct values for 'Peru'", {
  skip_on_cran()
  result <- get_country_info_cn("Peru")

  expect_s3_class(result, "data.frame")
  expect_equal(result$name_common, "Peru")
  expect_equal(result$name_official, "Republic of Peru")
  expect_equal(result$region, "Americas")
  expect_equal(result$subregion, "South America")
  expect_true("Lima" %in% result$capital)
  expect_true(is.numeric(result$area))
  expect_true(is.numeric(result$population))
  expect_true(any(grepl("Spanish|Quechua|Aymara", result$languages)))
})
