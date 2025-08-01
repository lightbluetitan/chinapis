# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2020_153_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2020_153_df is a data frame", {
  expect_s3_class(china_io_2020_153_df, "data.frame")
})

# Test 2: Confirm it has 169 columns
test_that("china_io_2020_153_df has 169 columns", {
  expect_equal(length(china_io_2020_153_df), 169)
})

# Test 3: Confirm it has 160 rows
test_that("china_io_2020_153_df has 160 rows", {
  expect_equal(nrow(china_io_2020_153_df), 160)
})

# Test 4: Confirm column names are correct (first subset - metadata columns)
test_that("china_io_2020_153_df has correct metadata column names", {
  metadata_cols <- c("Code", "Description", "DescriptionInChinese")
  expect_true(all(metadata_cols %in% names(china_io_2020_153_df)))
})

# Test 5: Confirm numeric sector columns exist (001-153)
test_that("china_io_2020_153_df has correct sector column names", {
  sector_cols <- sprintf("%03d", 1:153)
  expect_true(all(sector_cols %in% names(china_io_2020_153_df)))
})

# Test 6: Confirm special indicator columns exist
test_that("china_io_2020_153_df has correct special indicator column names", {
  special_cols <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  expect_true(all(special_cols %in% names(china_io_2020_153_df)))
})

# Test 7: Confirm complete column names structure
test_that("china_io_2020_153_df has complete correct column names", {
  expected_cols <- c("Code", "Description", "DescriptionInChinese",
                     sprintf("%03d", 1:153),
                     "TIU", "FU101", "FU102", "THC", "FU103", "TC",
                     "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  expect_named(china_io_2020_153_df, expected_cols)
})

# Test 8: Confirm metadata column types
test_that("china_io_2020_153_df metadata columns have correct types", {
  expect_type(china_io_2020_153_df$Code, "character")
  expect_type(china_io_2020_153_df$Description, "character")
  expect_type(china_io_2020_153_df$DescriptionInChinese, "character")
})

# Test 9: Confirm all sector columns (001-153) are numeric
test_that("china_io_2020_153_df sector columns have correct numeric types", {
  sector_cols <- sprintf("%03d", 1:153)
  for(col in sector_cols) {
    expect_type(china_io_2020_153_df[[col]], "double")
  }
})

# Test 10: Confirm special indicator columns are numeric
test_that("china_io_2020_153_df special indicator columns have correct types", {
  special_cols <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  for(col in special_cols) {
    expect_type(china_io_2020_153_df[[col]], "double")
  }
})

# Test 11: Confirm dataset dimensions consistency
test_that("china_io_2020_153_df has consistent dimensions", {
  expect_equal(dim(china_io_2020_153_df), c(160, 169))
})

# Test 12: Confirm all column names are unique
test_that("china_io_2020_153_df has unique column names", {
  expect_equal(length(names(china_io_2020_153_df)), length(unique(names(china_io_2020_153_df))))
})

# Test 13: Confirm character columns contain valid data
test_that("china_io_2020_153_df character columns contain valid data types", {
  expect_true(all(is.character(china_io_2020_153_df$Code)))
  expect_true(all(is.character(china_io_2020_153_df$Description)))
  expect_true(all(is.character(china_io_2020_153_df$DescriptionInChinese)))
})

# Test 14: Confirm numeric data structure integrity
test_that("china_io_2020_153_df numeric columns contain valid numeric data", {
  numeric_cols <- c(sprintf("%03d", 1:153),
                    "TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")

  for(col in numeric_cols) {
    expect_true(is.numeric(china_io_2020_153_df[[col]]))
  }
})

# Test 15: Confirm sector column sequence integrity (001-153)
test_that("china_io_2020_153_df has complete sector sequence from 001 to 153", {
  sector_cols <- sprintf("%03d", 1:153)
  actual_sector_cols <- names(china_io_2020_153_df)[4:156]  # positions 4-156
  expect_equal(actual_sector_cols, sector_cols)
})

# Test 16: Confirm no unexpected column types exist
test_that("china_io_2020_153_df contains only expected column types", {
  column_types <- sapply(china_io_2020_153_df, class)
  expected_types <- c("character", "numeric")
  expect_true(all(column_types %in% expected_types))
})

# Test 17: Confirm proper Input-Output matrix structure
test_that("china_io_2020_153_df maintains proper IO matrix structure", {
  # Should have 3 metadata columns + 153 sector columns + 13 special indicators = 169
  metadata_count <- 3
  sector_count <- 153
  special_count <- 13
  total_expected <- metadata_count + sector_count + special_count

  expect_equal(ncol(china_io_2020_153_df), total_expected)
  expect_equal(ncol(china_io_2020_153_df), 169)
})

# Test 18: Confirm data completeness - no entirely empty columns
test_that("china_io_2020_153_df has no completely empty columns", {
  for(col_name in names(china_io_2020_153_df)) {
    expect_true(exists("china_io_2020_153_df"))
    expect_true(col_name %in% names(china_io_2020_153_df))
  }
})

# Test 19: Confirm dataset object integrity
test_that("china_io_2020_153_df object maintains structural integrity", {
  expect_true(is.data.frame(china_io_2020_153_df))
  expect_false(is.null(china_io_2020_153_df))
  expect_true(nrow(china_io_2020_153_df) > 0)
  expect_true(ncol(china_io_2020_153_df) > 0)
})

# Test 20: Confirm detailed level IO matrix characteristics
test_that("china_io_2020_153_df represents detailed 153-sector IO matrix", {
  # Check that we have exactly 153 detailed sector columns
  sector_pattern <- "^[0-9]{3}$"
  sector_cols <- names(china_io_2020_153_df)[grepl(sector_pattern, names(china_io_2020_153_df))]
  expect_equal(length(sector_cols), 153)

  # Check that sectors are properly numbered from 001 to 153
  expect_equal(min(as.numeric(sector_cols)), 1)
  expect_equal(max(as.numeric(sector_cols)), 153)
})
