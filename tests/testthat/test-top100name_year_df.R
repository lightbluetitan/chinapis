# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# top100name_year_df

library(testthat)

test_that("top100name_year_df is a valid data.frame with correct structure", {

  # Test class
  expect_s3_class(top100name_year_df, "data.frame")

  # Test number of columns
  expect_equal(length(top100name_year_df), 37)

  # Test number of rows
  expect_equal(nrow(top100name_year_df), 100)

  # Test column names
  expected_names <- c(
    "top100",
    "name.all.1950", "name.all.1960", "name.all.1970", "name.all.1980", "name.all.1990", "name.all.2000",
    "n.all.1950", "n.all.1960", "n.all.1970", "n.all.1980", "n.all.1990", "n.all.2000",
    "name.m.1950", "name.m.1960", "name.m.1970", "name.m.1980", "name.m.1990", "name.m.2000",
    "n.m.1950", "n.m.1960", "n.m.1970", "n.m.1980", "n.m.1990", "n.m.2000",
    "name.f.1950", "name.f.1960", "name.f.1970", "name.f.1980", "name.f.1990", "name.f.2000",
    "n.f.1950", "n.f.1960", "n.f.1970", "n.f.1980", "n.f.1990", "n.f.2000"
  )

  expect_named(top100name_year_df, expected_names, ignore.order = FALSE)

})
