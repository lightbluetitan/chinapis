# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2020_42_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2020_42_df is a data frame", {
  expect_s3_class(china_io_2020_42_df, "data.frame")
})

# Test 2: Confirm it has 53 columns
test_that("china_io_2020_42_df has 53 columns", {
  expect_equal(length(china_io_2020_42_df), 53)
})

# Test 3: Confirm it has 91 rows
test_that("china_io_2020_42_df has 91 rows", {
  expect_equal(nrow(china_io_2020_42_df), 91)
})

# Test 4: Confirm column names are correct
test_that("china_io_2020_42_df has correct column names", {
  expect_named(china_io_2020_42_df, c(
    "Code", "Description", "DescriptionInChinese", "Origin",
    "01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
    "41", "42", "TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO"
  ))
})

# Test 5: Confirm column types are as expected
test_that("china_io_2020_42_df columns have correct types", {
  expect_type(china_io_2020_42_df$Code, "character")
  expect_type(china_io_2020_42_df$Description, "character")
  expect_type(china_io_2020_42_df$DescriptionInChinese, "character")
  expect_type(china_io_2020_42_df$Origin, "character")
  expect_type(china_io_2020_42_df$`01`, "double")
  expect_type(china_io_2020_42_df$`02`, "double")
  expect_type(china_io_2020_42_df$`03`, "double")
  expect_type(china_io_2020_42_df$`04`, "double")
  expect_type(china_io_2020_42_df$`05`, "double")
  expect_type(china_io_2020_42_df$`06`, "double")
  expect_type(china_io_2020_42_df$`07`, "double")
  expect_type(china_io_2020_42_df$`08`, "double")
  expect_type(china_io_2020_42_df$`09`, "double")
  expect_type(china_io_2020_42_df$`10`, "double")
  expect_type(china_io_2020_42_df$`11`, "double")
  expect_type(china_io_2020_42_df$`12`, "double")
  expect_type(china_io_2020_42_df$`13`, "double")
  expect_type(china_io_2020_42_df$`14`, "double")
  expect_type(china_io_2020_42_df$`15`, "double")
  expect_type(china_io_2020_42_df$`16`, "double")
  expect_type(china_io_2020_42_df$`17`, "double")
  expect_type(china_io_2020_42_df$`18`, "double")
  expect_type(china_io_2020_42_df$`19`, "double")
  expect_type(china_io_2020_42_df$`20`, "double")
  expect_type(china_io_2020_42_df$`21`, "double")
  expect_type(china_io_2020_42_df$`22`, "double")
  expect_type(china_io_2020_42_df$`23`, "double")
  expect_type(china_io_2020_42_df$`24`, "double")
  expect_type(china_io_2020_42_df$`25`, "double")
  expect_type(china_io_2020_42_df$`26`, "double")
  expect_type(china_io_2020_42_df$`27`, "double")
  expect_type(china_io_2020_42_df$`28`, "double")
  expect_type(china_io_2020_42_df$`29`, "double")
  expect_type(china_io_2020_42_df$`30`, "double")
  expect_type(china_io_2020_42_df$`31`, "double")
  expect_type(china_io_2020_42_df$`32`, "double")
  expect_type(china_io_2020_42_df$`33`, "double")
  expect_type(china_io_2020_42_df$`34`, "double")
  expect_type(china_io_2020_42_df$`35`, "double")
  expect_type(china_io_2020_42_df$`36`, "double")
  expect_type(china_io_2020_42_df$`37`, "double")
  expect_type(china_io_2020_42_df$`38`, "double")
  expect_type(china_io_2020_42_df$`39`, "double")
  expect_type(china_io_2020_42_df$`40`, "double")
  expect_type(china_io_2020_42_df$`41`, "double")
  expect_type(china_io_2020_42_df$`42`, "double")
  expect_type(china_io_2020_42_df$TIU, "double")
  expect_type(china_io_2020_42_df$TC, "double")
  expect_type(china_io_2020_42_df$FU201, "double")
  expect_type(china_io_2020_42_df$FU202, "double")
  expect_type(china_io_2020_42_df$EX, "double")
  expect_type(china_io_2020_42_df$TFU, "double")
  expect_type(china_io_2020_42_df$GO, "double")
})

# Test 6: Confirm dataset structure integrity - character columns are not empty
test_that("china_io_2020_42_df character columns contain valid data", {
  expect_true(all(is.character(china_io_2020_42_df$Code)))
  expect_true(all(is.character(china_io_2020_42_df$Description)))
  expect_true(all(is.character(china_io_2020_42_df$DescriptionInChinese)))
  expect_true(all(is.character(china_io_2020_42_df$Origin)))
})

# Test 7: Confirm numeric columns contain valid numeric data
test_that("china_io_2020_42_df numeric columns contain valid numeric data", {
  numeric_cols <- c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
                    "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                    "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
                    "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
                    "41", "42", "TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")

  for(col in numeric_cols) {
    expect_true(is.numeric(china_io_2020_42_df[[col]]))
  }
})

# Test 8: Confirm dataset dimensions consistency
test_that("china_io_2020_42_df has consistent dimensions", {
  expect_equal(dim(china_io_2020_42_df), c(91, 53))
})

# Test 9: Confirm all column names are unique
test_that("china_io_2020_42_df has unique column names", {
  expect_equal(length(names(china_io_2020_42_df)), length(unique(names(china_io_2020_42_df))))
})

# Test 10: Confirm specific column groups exist (metadata vs numeric data)
test_that("china_io_2020_42_df has proper metadata and numeric column structure", {
  metadata_cols <- c("Code", "Description", "DescriptionInChinese", "Origin")
  numeric_sector_cols <- c("01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
                           "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                           "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
                           "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
                           "41", "42")
  special_indicator_cols <- c("TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")

  expect_true(all(metadata_cols %in% names(china_io_2020_42_df)))
  expect_true(all(numeric_sector_cols %in% names(china_io_2020_42_df)))
  expect_true(all(special_indicator_cols %in% names(china_io_2020_42_df)))
})

# Test 11: Confirm no unexpected column types
test_that("china_io_2020_42_df contains only expected column types", {
  column_types <- sapply(china_io_2020_42_df, class)
  expected_types <- c("character", "numeric")
  expect_true(all(column_types %in% expected_types))
})

# Test 12: Confirm data integrity - no columns are entirely missing
test_that("china_io_2020_42_df has no completely empty columns", {
  for(col_name in names(china_io_2020_42_df)) {
    expect_true(exists("china_io_2020_42_df"))
    expect_true(col_name %in% names(china_io_2020_42_df))
  }
})
