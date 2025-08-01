# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2002_122_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2002_122_df is a data frame", {
  expect_s3_class(china_io_2002_122_df, "data.frame")
})

# Test 2: Confirm it has exactly 139 columns
test_that("china_io_2002_122_df has 139 columns", {
  expect_equal(length(china_io_2002_122_df), 139)
})

# Test 3: Confirm it has exactly 129 rows
test_that("china_io_2002_122_df has 129 rows", {
  expect_equal(nrow(china_io_2002_122_df), 129)
})

# Test 4: Confirm first three column names are correct
test_that("china_io_2002_122_df has correct metadata column names", {
  expect_equal(
    names(china_io_2002_122_df)[1:3],
    c("Code", "Description", "DescriptionInChinese")
  )
})

# Test 5: Confirm column types of the first 3 identifier columns
test_that("china_io_2002_122_df identifier columns have correct types", {
  expect_type(china_io_2002_122_df$Code, "character")
  expect_type(china_io_2002_122_df$Description, "character")
  expect_type(china_io_2002_122_df$DescriptionInChinese, "character")
})

# Test 6: Confirm that all other columns are numeric (double)
test_that("china_io_2002_122_df numeric columns are of type double", {
  numeric_cols <- setdiff(names(china_io_2002_122_df), c("Code", "Description", "DescriptionInChinese"))
  for (col in numeric_cols) {
    expect_type(china_io_2002_122_df[[col]], "double")
  }
})
