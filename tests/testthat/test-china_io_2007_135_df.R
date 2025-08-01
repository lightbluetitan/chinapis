# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2007_135_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2007_135_df is a data frame", {
  expect_s3_class(china_io_2007_135_df, "data.frame")
})

# Test 2: Confirm column count is exactly 152
test_that("china_io_2007_135_df has 152 columns", {
  expect_equal(length(china_io_2007_135_df), 152)
})

# Test 3: Confirm row count is exactly 142
test_that("china_io_2007_135_df has 142 rows", {
  expect_equal(nrow(china_io_2007_135_df), 142)
})

# Test 4: Confirm first three columns are metadata with expected names
test_that("china_io_2007_135_df has correct metadata column names", {
  expect_equal(
    names(china_io_2007_135_df)[1:3],
    c("Code", "Description", "DescriptionInChinese")
  )
})

# Test 5: Confirm metadata columns are character type
test_that("china_io_2007_135_df metadata columns are character", {
  expect_type(china_io_2007_135_df$Code, "character")
  expect_type(china_io_2007_135_df$Description, "character")
  expect_type(china_io_2007_135_df$DescriptionInChinese, "character")
})

# Test 6: Confirm all other columns are numeric (double)
test_that("china_io_2007_135_df numeric columns are of type double", {
  numeric_cols <- setdiff(names(china_io_2007_135_df), c("Code", "Description", "DescriptionInChinese"))
  for (col in numeric_cols) {
    expect_type(china_io_2007_135_df[[col]], "double")
  }
})

# Test 7: Confirm expected special columns are present
test_that("china_io_2007_135_df includes expected special economic account columns", {
  expected_special_cols <- c(
    "TIU", "FU101", "FU102", "THC", "FU103", "TC",
    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "ERR", "GO"
  )
  expect_true(all(expected_special_cols %in% names(china_io_2007_135_df)))
})

# Test 8: Confirm sector column names follow 3-digit zero-padded format from 001 to 135
test_that("china_io_2007_135_df includes numeric sector codes from 001 to 135", {
  sector_codes <- sprintf("%03d", 1:135)
  expect_true(all(sector_codes %in% names(china_io_2007_135_df)))
})

