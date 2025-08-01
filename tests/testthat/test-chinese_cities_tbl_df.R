# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# chinese_cities_tbl_df


test_that("chinese_cities_tbl_df: object exists and is a tibble", {
  expect_true(exists("chinese_cities_tbl_df"))
  expect_s3_class(chinese_cities_tbl_df, "tbl_df")
})

test_that("chinese_cities_tbl_df: has correct column names", {
  expected_names <- c(
    "city", "lat", "lng", "country", "iso2",
    "admin_name", "capital", "population", "population_proper"
  )
  expect_named(chinese_cities_tbl_df, expected_names)
})

test_that("chinese_cities_tbl_df: has expected dimensions", {
  expect_equal(ncol(chinese_cities_tbl_df), 9)
  expect_gt(nrow(chinese_cities_tbl_df), 0)
})

test_that("chinese_cities_tbl_df: column types are consistent", {
  expect_type(chinese_cities_tbl_df$city, "character")
  expect_type(chinese_cities_tbl_df$lat, "double")
  expect_type(chinese_cities_tbl_df$lng, "double")
  expect_type(chinese_cities_tbl_df$country, "character")
  expect_type(chinese_cities_tbl_df$iso2, "character")
  expect_type(chinese_cities_tbl_df$admin_name, "character")
  expect_type(chinese_cities_tbl_df$capital, "character")
  expect_type(chinese_cities_tbl_df$population, "double")
  expect_type(chinese_cities_tbl_df$population_proper, "double")
})

test_that("chinese_cities_tbl_df: does not contain duplicated rows", {
  expect_equal(nrow(chinese_cities_tbl_df), nrow(unique(chinese_cities_tbl_df)))
})

test_that("chinese_cities_tbl_df: expected range for coordinates", {
  expect_true(all(chinese_cities_tbl_df$lat >= -90 | is.na(chinese_cities_tbl_df$lat)))
  expect_true(all(chinese_cities_tbl_df$lat <= 90 | is.na(chinese_cities_tbl_df$lat)))
  expect_true(all(chinese_cities_tbl_df$lng >= -180 | is.na(chinese_cities_tbl_df$lng)))
  expect_true(all(chinese_cities_tbl_df$lng <= 180 | is.na(chinese_cities_tbl_df$lng)))
})

test_that("chinese_cities_tbl_df: no negative values in population columns", {
  expect_true(all(chinese_cities_tbl_df$population >= 0 | is.na(chinese_cities_tbl_df$population)))
  expect_true(all(chinese_cities_tbl_df$population_proper >= 0 | is.na(chinese_cities_tbl_df$population_proper)))
})
