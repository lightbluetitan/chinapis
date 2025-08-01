# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# population_df


library(testthat)

test_that("population_df is a data frame with correct structure", {
  expect_s3_class(population_df, "data.frame")
  expect_equal(ncol(population_df), 3)
  expect_named(population_df, c("item", "n", "n.corrected"))
})

test_that("population_df has expected number of rows", {
  expect_equal(nrow(population_df), 40)
})

test_that("population_df columns have correct types", {
  expect_type(population_df$item, "character")
  expect_type(population_df$n, "double")
  expect_type(population_df$n.corrected, "double")
})

test_that("population_df does not contain unexpected column names", {
  expect_setequal(names(population_df), c("item", "n", "n.corrected"))
})

test_that("population_df can contain NA values", {
  expect_true(any(is.na(population_df)) || all(!is.na(population_df)))
})

test_that("population_df contains no unexpected attributes", {
  expect_null(attr(population_df, "extra"))  # There should be no extra attribute named "extra"
})
