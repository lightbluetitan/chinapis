# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# health_family_life_df

library(testthat)

testthat::test_that("health_family_life_df: basic structure is correct", {
  # Check class
  testthat::expect_s3_class(health_family_life_df, "data.frame")

  # Check number of columns
  testthat::expect_equal(length(health_family_life_df), 10)

  # Check number of rows
  testthat::expect_gt(nrow(health_family_life_df), 0)

  # Check column names
  expected_names <- c("R_region", "R_age", "R_edu", "R_income", "R_health",
                      "R_height", "R_happy", "A_height", "A_edu", "A_income")
  testthat::expect_equal(names(health_family_life_df), expected_names)
})

testthat::test_that("health_family_life_df: column types are as expected", {
  # Factors and ordered factors
  testthat::expect_true(is.factor(health_family_life_df$R_region))
  testthat::expect_true(is.ordered(health_family_life_df$R_edu))
  testthat::expect_true(is.ordered(health_family_life_df$R_health))
  testthat::expect_true(is.ordered(health_family_life_df$R_happy))
  testthat::expect_true(is.ordered(health_family_life_df$A_edu))

  # Numeric columns
  testthat::expect_type(health_family_life_df$R_age, "double")
  testthat::expect_type(health_family_life_df$R_income, "double")
  testthat::expect_type(health_family_life_df$R_height, "double")
  testthat::expect_type(health_family_life_df$A_height, "double")
  testthat::expect_type(health_family_life_df$A_income, "double")
})

testthat::test_that("health_family_life_df: ordered factor levels exist", {
  testthat::expect_gt(length(levels(health_family_life_df$R_edu)), 1)
  testthat::expect_gt(length(levels(health_family_life_df$R_health)), 1)
  testthat::expect_gt(length(levels(health_family_life_df$R_happy)), 1)
  testthat::expect_gt(length(levels(health_family_life_df$A_edu)), 1)
})

testthat::test_that("health_family_life_df: no test assumes absence of NA", {
  # Ensure NA values are allowed and do not cause test failures
  testthat::expect_silent(summary(health_family_life_df))
})
