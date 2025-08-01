# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# top50char_year_df

library(testthat)

test_that("top50char_year_df is a data frame with 37 variables and 50 observations", {
  expect_s3_class(top50char_year_df, "data.frame")
  expect_equal(nrow(top50char_year_df), 50)
  expect_equal(ncol(top50char_year_df), 37)
})

test_that("top50char_year_df has the expected variable names", {
  expected_names <- c(
    "top50", "char.all.1950", "char.all.1960", "char.all.1970", "char.all.1980", "char.all.1990",
    "char.all.2000", "n.all.1950", "n.all.1960", "n.all.1970", "n.all.1980", "n.all.1990",
    "n.all.2000", "char.m.1950", "char.m.1960", "char.m.1970", "char.m.1980", "char.m.1990",
    "char.m.2000", "n.m.1950", "n.m.1960", "n.m.1970", "n.m.1980", "n.m.1990", "n.m.2000",
    "char.f.1950", "char.f.1960", "char.f.1970", "char.f.1980", "char.f.1990", "char.f.2000",
    "n.f.1950", "n.f.1960", "n.f.1970", "n.f.1980", "n.f.1990", "n.f.2000"
  )
  expect_named(top50char_year_df, expected_names)
})

test_that("Data types of top50char_year_df variables are as expected", {
  expect_type(top50char_year_df$top50, "double")  # numeric
  expect_type(top50char_year_df$char.all.1950, "character")
  expect_type(top50char_year_df$char.all.1960, "character")
  expect_type(top50char_year_df$char.all.1970, "character")
  expect_type(top50char_year_df$char.all.1980, "character")
  expect_type(top50char_year_df$char.all.1990, "character")
  expect_type(top50char_year_df$char.all.2000, "character")
  expect_type(top50char_year_df$n.all.1950, "double")
  expect_type(top50char_year_df$n.all.1960, "double")
  expect_type(top50char_year_df$n.all.1970, "double")
  expect_type(top50char_year_df$n.all.1980, "double")
  expect_type(top50char_year_df$n.all.1990, "double")
  expect_type(top50char_year_df$n.all.2000, "double")
  expect_type(top50char_year_df$char.m.1950, "character")
  expect_type(top50char_year_df$char.m.1960, "character")
  expect_type(top50char_year_df$char.m.1970, "character")
  expect_type(top50char_year_df$char.m.1980, "character")
  expect_type(top50char_year_df$char.m.1990, "character")
  expect_type(top50char_year_df$char.m.2000, "character")
  expect_type(top50char_year_df$n.m.1950, "double")
  expect_type(top50char_year_df$n.m.1960, "double")
  expect_type(top50char_year_df$n.m.1970, "double")
  expect_type(top50char_year_df$n.m.1980, "double")
  expect_type(top50char_year_df$n.m.1990, "double")
  expect_type(top50char_year_df$n.m.2000, "double")
  expect_type(top50char_year_df$char.f.1950, "character")
  expect_type(top50char_year_df$char.f.1960, "character")
  expect_type(top50char_year_df$char.f.1970, "character")
  expect_type(top50char_year_df$char.f.1980, "character")
  expect_type(top50char_year_df$char.f.1990, "character")
  expect_type(top50char_year_df$char.f.2000, "character")
  expect_type(top50char_year_df$n.f.1950, "double")
  expect_type(top50char_year_df$n.f.1960, "double")
  expect_type(top50char_year_df$n.f.1970, "double")
  expect_type(top50char_year_df$n.f.1980, "double")
  expect_type(top50char_year_df$n.f.1990, "double")
  expect_type(top50char_year_df$n.f.2000, "double")
})
