# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2005_42_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2005_42_df is a data frame", {
  expect_s3_class(china_io_2005_42_df, "data.frame")
})

# Test 2: Confirm it has exactly 55 columns
test_that("china_io_2005_42_df has 55 columns", {
  expect_equal(length(china_io_2005_42_df), 55)
})

# Test 3: Confirm it has exactly 49 rows
test_that("china_io_2005_42_df has 49 rows", {
  expect_equal(nrow(china_io_2005_42_df), 49)
})

# Test 4: Confirm the first three column names are correct
test_that("china_io_2005_42_df has correct metadata column names", {
  expect_equal(
    names(china_io_2005_42_df)[1:3],
    c("Code", "Description", "DescriptionInChinese")
  )
})

# Test 5: Confirm column types for metadata
test_that("china_io_2005_42_df metadata columns have correct types", {
  expect_type(china_io_2005_42_df$Code, "character")
  expect_type(china_io_2005_42_df$Description, "character")
  expect_type(china_io_2005_42_df$DescriptionInChinese, "character")
})

# Test 6: Confirm all other columns are of type double
test_that("china_io_2005_42_df numerical columns are of type double", {
  numeric_cols <- setdiff(names(china_io_2005_42_df), c("Code", "Description", "DescriptionInChinese"))
  for (col in numeric_cols) {
    expect_type(china_io_2005_42_df[[col]], "double")
  }
})

# Test 7: Confirm expected presence of special columns
test_that("china_io_2005_42_df includes expected special columns", {
  expect_true(all(c("TIU", "FU101", "FU102", "FU103", "FU201", "FU202", "EX", "IM", "ERR", "GO") %in% names(china_io_2005_42_df)))
})
