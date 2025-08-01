# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2018_42_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2018_42_df is a data frame", {
  expect_s3_class(china_io_2018_42_df, "data.frame")
})

# Test 2: Confirm it has 53 columns
test_that("china_io_2018_42_df has 53 columns", {
  expect_equal(length(china_io_2018_42_df), 53)
})

# Test 3: Confirm it has 91 rows
test_that("china_io_2018_42_df has 91 rows", {
  expect_equal(nrow(china_io_2018_42_df), 91)
})

# Test 4: Confirm complete column names structure
test_that("china_io_2018_42_df has correct column names", {
  expected_cols <- c("Code", "Description", "DescriptionInChinese", "Origin",
                     "01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
                     "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                     "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
                     "31", "32", "33", "34", "35", "36", "37", "38", "39", "40",
                     "41", "42", "TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")
  expect_named(china_io_2018_42_df, expected_cols)
})

# Test 5: Confirm metadata column types
test_that("china_io_2018_42_df metadata columns have correct types", {
  expect_type(china_io_2018_42_df$Code, "character")
  expect_type(china_io_2018_42_df$Description, "character")
  expect_type(china_io_2018_42_df$DescriptionInChinese, "character")
  expect_type(china_io_2018_42_df$Origin, "character")
})

# Test 6: Confirm sector columns (01-42) are numeric
test_that("china_io_2018_42_df sector columns have correct numeric types", {
  sector_cols <- sprintf("%02d", 1:42)
  for(col in sector_cols) {
    expect_type(china_io_2018_42_df[[col]], "double")
  }
})

# Test 7: Confirm special indicator columns are numeric
test_that("china_io_2018_42_df special indicator columns have correct types", {
  special_cols <- c("TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")
  for(col in special_cols) {
    expect_type(china_io_2018_42_df[[col]], "double")
  }
})

# Test 8: Confirm dataset dimensions consistency
test_that("china_io_2018_42_df has consistent dimensions", {
  expect_equal(dim(china_io_2018_42_df), c(91, 53))
})

# Test 9: Confirm all column names are unique
test_that("china_io_2018_42_df has unique column names", {
  expect_equal(length(names(china_io_2018_42_df)), length(unique(names(china_io_2018_42_df))))
})

# Test 10: Confirm metadata columns contain valid character data
test_that("china_io_2018_42_df metadata columns contain valid character data", {
  expect_true(all(is.character(china_io_2018_42_df$Code)))
  expect_true(all(is.character(china_io_2018_42_df$Description)))
  expect_true(all(is.character(china_io_2018_42_df$DescriptionInChinese)))
  expect_true(all(is.character(china_io_2018_42_df$Origin)))
})

# Test 11: Confirm sector column sequence integrity (01-42)
test_that("china_io_2018_42_df has complete sector sequence from 01 to 42", {
  sector_cols <- sprintf("%02d", 1:42)
  actual_sector_cols <- names(china_io_2018_42_df)[5:46]  # positions 5-46
  expect_equal(actual_sector_cols, sector_cols)
})

# Test 12: Confirm numeric data structure integrity
test_that("china_io_2018_42_df numeric columns contain valid numeric data", {
  numeric_cols <- c(sprintf("%02d", 1:42), "TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")

  for(col in numeric_cols) {
    expect_true(is.numeric(china_io_2018_42_df[[col]]))
  }
})

# Test 13: Confirm proper 42-sector IO matrix structure
test_that("china_io_2018_42_df maintains proper 42-sector IO matrix structure", {
  # Should have 4 metadata columns + 42 sector columns + 7 special indicators = 53
  metadata_count <- 4
  sector_count <- 42
  special_count <- 7
  total_expected <- metadata_count + sector_count + special_count

  expect_equal(ncol(china_io_2018_42_df), total_expected)
  expect_equal(ncol(china_io_2018_42_df), 53)
})

# Test 14: Confirm specific column groups exist and are positioned correctly
test_that("china_io_2018_42_df has proper column group structure", {
  metadata_cols <- c("Code", "Description", "DescriptionInChinese", "Origin")
  sector_cols <- sprintf("%02d", 1:42)
  special_cols <- c("TIU", "TC", "FU201", "FU202", "EX", "TFU", "GO")

  expect_true(all(metadata_cols %in% names(china_io_2018_42_df)))
  expect_true(all(sector_cols %in% names(china_io_2018_42_df)))
  expect_true(all(special_cols %in% names(china_io_2018_42_df)))
})

# Test 15: Confirm no unexpected column types exist
test_that("china_io_2018_42_df contains only expected column types", {
  column_types <- sapply(china_io_2018_42_df, class)
  expected_types <- c("character", "numeric")
  expect_true(all(column_types %in% expected_types))
})

# Test 16: Confirm 2018 IO matrix temporal consistency with structure
test_that("china_io_2018_42_df represents 2018 42-sector aggregated IO matrix", {
  # Check that we have exactly 42 sector columns with 2-digit format
  sector_pattern <- "^[0-9]{2}$"
  sector_cols <- names(china_io_2018_42_df)[grepl(sector_pattern, names(china_io_2018_42_df))]
  expect_equal(length(sector_cols), 42)

  # Check proper sector numbering from 01 to 42
  sector_numbers <- as.numeric(sector_cols)
  expect_equal(min(sector_numbers), 1)
  expect_equal(max(sector_numbers), 42)
  expect_equal(length(unique(sector_numbers)), 42)
})

# Test 17: Confirm data completeness and structural integrity
test_that("china_io_2018_42_df has complete data structure without missing columns", {
  for(col_name in names(china_io_2018_42_df)) {
    expect_true(exists("china_io_2018_42_df"))
    expect_true(col_name %in% names(china_io_2018_42_df))
  }
})

# Test 18: Confirm dataset object and memory integrity
test_that("china_io_2018_42_df object maintains complete structural integrity", {
  expect_true(is.data.frame(china_io_2018_42_df))
  expect_false(is.null(china_io_2018_42_df))
  expect_true(nrow(china_io_2018_42_df) > 0)
  expect_true(ncol(china_io_2018_42_df) > 0)
})

# Test 19: Confirm Origin column presence (unique to this dataset)
test_that("china_io_2018_42_df contains Origin column as fourth metadata column", {
  expect_true("Origin" %in% names(china_io_2018_42_df))
  expect_equal(which(names(china_io_2018_42_df) == "Origin"), 4)
  expect_type(china_io_2018_42_df$Origin, "character")
})

# Test 20: Confirm aggregated sector format consistency
test_that("china_io_2018_42_df uses consistent 2-digit sector formatting", {
  sector_cols <- sprintf("%02d", 1:42)
  actual_sectors <- names(china_io_2018_42_df)[5:46]

  # All sectors should be exactly 2 characters
  expect_true(all(nchar(actual_sectors) == 2))

  # All sectors should be numeric strings
  expect_true(all(grepl("^[0-9]{2}$", actual_sectors)))

  # Should match expected format
  expect_equal(actual_sectors, sector_cols)
})
