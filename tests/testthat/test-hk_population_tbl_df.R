# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# hk_population_tbl_df

library(testthat)

test_that("hk_population_tbl_df is a tibble with 8 columns and 18 rows", {
  expect_s3_class(hk_population_tbl_df, "tbl_df")
  expect_s3_class(hk_population_tbl_df, "tbl")
  expect_s3_class(hk_population_tbl_df, "data.frame")
  expect_equal(ncol(hk_population_tbl_df), 8)
  expect_equal(nrow(hk_population_tbl_df), 18)
})

test_that("hk_population_tbl_df has the correct column names", {
  expected_names <- c("District_ZH", "District_EN", "Age_0_14", "Age_15_24",
                      "Age_25_44", "Age_45_64", "Age_65", "TotalPopulation")
  expect_named(hk_population_tbl_df, expected_names)
})

test_that("hk_population_tbl_df column types are correct", {
  expect_type(hk_population_tbl_df$District_ZH, "character")
  expect_type(hk_population_tbl_df$District_EN, "character")
  expect_type(hk_population_tbl_df$Age_0_14, "double")
  expect_type(hk_population_tbl_df$Age_15_24, "double")
  expect_type(hk_population_tbl_df$Age_25_44, "double")
  expect_type(hk_population_tbl_df$Age_45_64, "double")
  expect_type(hk_population_tbl_df$Age_65, "double")
  expect_type(hk_population_tbl_df$TotalPopulation, "double")
})

test_that("TotalPopulation is consistent with age groups when fully available", {
  # For rows without NA values in any age group or total
  complete_rows <- complete.cases(hk_population_tbl_df[c("Age_0_14", "Age_15_24",
                                                         "Age_25_44", "Age_45_64",
                                                         "Age_65", "TotalPopulation")])
  if (any(complete_rows)) {
    computed_total <- with(hk_population_tbl_df[complete_rows, ],
                           Age_0_14 + Age_15_24 + Age_25_44 + Age_45_64 + Age_65)
    expected_total <- hk_population_tbl_df$TotalPopulation[complete_rows]
    expect_equal(computed_total, expected_total)
  } else {
    succeed("No complete cases to test consistency of TotalPopulation")
  }
})
