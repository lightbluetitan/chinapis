# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2010_41_df


library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2010_41_df is a data frame", {
  expect_s3_class(china_io_2010_41_df, "data.frame")
})

# Test 2: Confirm it has 58 columns
test_that("china_io_2010_41_df has 58 columns", {
  expect_equal(length(china_io_2010_41_df), 58)
  expect_equal(ncol(china_io_2010_41_df), 58)
})

# Test 3: Confirm it has 48 rows
test_that("china_io_2010_41_df has 48 rows", {
  expect_equal(nrow(china_io_2010_41_df), 48)
})

# Test 4: Confirm column names are correct
test_that("china_io_2010_41_df has correct column names", {
  expect_named(china_io_2010_41_df, c(
    "Code", "Description", "DescriptionInChinese",
    "01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41",
    "TIU", "FU101", "FU102", "THC", "FU103", "TC", "FU201", "FU202",
    "GCF", "EX", "TFU", "IM", "ERR", "GO"
  ))
})

# Test 5: Confirm the first three columns are character type
test_that("china_io_2010_41_df identifier columns have correct character types", {
  expect_type(china_io_2010_41_df$Code, "character")
  expect_type(china_io_2010_41_df$Description, "character")
  expect_type(china_io_2010_41_df$DescriptionInChinese, "character")
})

# Test 6: Confirm all numbered columns (01-41) are numeric
test_that("china_io_2010_41_df numbered columns are numeric", {
  numbered_cols <- sprintf("%02d", 1:41)
  for(col in numbered_cols) {
    expect_type(china_io_2010_41_df[[col]], "double")
  }
})

# Test 7: Confirm all special identifier columns are numeric
test_that("china_io_2010_41_df special identifier columns are numeric", {
  special_cols <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "ERR", "GO")
  for(col in special_cols) {
    expect_type(china_io_2010_41_df[[col]], "double")
  }
})

# Test 8: Confirm dataset dimensions and data point count
test_that("china_io_2010_41_df has consistent dimensional properties", {
  expect_equal(dim(china_io_2010_41_df), c(48, 58))
  expect_equal(nrow(china_io_2010_41_df) * ncol(china_io_2010_41_df), 2784)
  expect_true(nrow(china_io_2010_41_df) > 0)
  expect_true(ncol(china_io_2010_41_df) > 0)
})

# Test 9: Confirm character columns contain valid data
test_that("china_io_2010_41_df character columns have valid content", {
  expect_false(all(is.na(china_io_2010_41_df$Code)))
  expect_false(all(is.na(china_io_2010_41_df$Description)))
  expect_false(all(is.na(china_io_2010_41_df$DescriptionInChinese)))
  expect_true(length(china_io_2010_41_df$Code) == 48)
  expect_true(length(china_io_2010_41_df$Description) == 48)
  expect_true(length(china_io_2010_41_df$DescriptionInChinese) == 48)
})

# Test 10: Confirm no duplicate column names and proper uniqueness
test_that("china_io_2010_41_df has unique column names", {
  expect_false(any(duplicated(names(china_io_2010_41_df))))
  expect_equal(length(unique(names(china_io_2010_41_df))), 58)
  expect_true(all(names(china_io_2010_41_df) != ""))
})

# Test 11: Confirm two-digit formatting for numbered columns
test_that("china_io_2010_41_df numbered columns follow two-digit format", {
  numbered_cols <- names(china_io_2010_41_df)[4:44]
  expected_format <- sprintf("%02d", 1:41)
  expect_equal(numbered_cols, expected_format)
  expect_equal(length(numbered_cols), 41)
})

# Test 12: Confirm data type consistency across numeric columns
test_that("china_io_2010_41_df numeric columns have consistent types", {
  numeric_cols <- names(china_io_2010_41_df)[4:58]
  numeric_types <- sapply(china_io_2010_41_df[numeric_cols], typeof)
  expect_true(all(numeric_types == "double"))
  expect_equal(length(numeric_cols), 55)
})

# Test 13: Confirm structural completeness and integrity
test_that("china_io_2010_41_df maintains structural completeness", {
  expect_true(is.data.frame(china_io_2010_41_df))
  expect_equal(class(china_io_2010_41_df), "data.frame")
  expect_false(is.null(china_io_2010_41_df))
  expect_true(all(!is.null(names(china_io_2010_41_df))))
  expect_equal(length(names(china_io_2010_41_df)), ncol(china_io_2010_41_df))
})

# Test 14: Confirm specific column count validations
test_that("china_io_2010_41_df has correct column distribution", {
  character_cols <- sum(sapply(china_io_2010_41_df, is.character))
  numeric_cols <- sum(sapply(china_io_2010_41_df, is.numeric))
  expect_equal(character_cols, 3)
  expect_equal(numeric_cols, 55)
  expect_equal(character_cols + numeric_cols, 58)
})

# Test 15: Confirm dataset is not empty and has proper structure
test_that("china_io_2010_41_df has valid data structure properties", {
  expect_gt(nrow(china_io_2010_41_df), 0)
  expect_gt(ncol(china_io_2010_41_df), 0)
  expect_true(is.finite(nrow(china_io_2010_41_df)))
  expect_true(is.finite(ncol(china_io_2010_41_df)))
  expect_false(any(is.null(colnames(china_io_2010_41_df))))
})
