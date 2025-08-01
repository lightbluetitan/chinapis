# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2017_149_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2017_149_df is a data frame", {
  expect_s3_class(china_io_2017_149_df, "data.frame")
})

# Test 2: Confirm it has 165 columns
test_that("china_io_2017_149_df has 165 columns", {
  expect_equal(length(china_io_2017_149_df), 165)
})

# Test 3: Confirm it has 156 rows
test_that("china_io_2017_149_df has 156 rows", {
  expect_equal(nrow(china_io_2017_149_df), 156)
})

# Test 4: Confirm metadata column names are correct
test_that("china_io_2017_149_df has correct metadata column names", {
  metadata_cols <- c("Code", "Description", "DescriptionInChinese")
  expect_true(all(metadata_cols %in% names(china_io_2017_149_df)))
})

# Test 5: Confirm sector columns exist (001-149)
test_that("china_io_2017_149_df has correct sector column names", {
  sector_cols <- sprintf("%03d", 1:149)
  expect_true(all(sector_cols %in% names(china_io_2017_149_df)))
})

# Test 6: Confirm special indicator columns exist
test_that("china_io_2017_149_df has correct special indicator column names", {
  special_cols <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  expect_true(all(special_cols %in% names(china_io_2017_149_df)))
})

# Test 7: Confirm complete column names structure
test_that("china_io_2017_149_df has complete correct column names", {
  expected_cols <- c("Code", "Description", "DescriptionInChinese",
                     sprintf("%03d", 1:149),
                     "TIU", "FU101", "FU102", "THC", "FU103", "TC",
                     "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  expect_named(china_io_2017_149_df, expected_cols)
})

# Test 8: Confirm metadata column types
test_that("china_io_2017_149_df metadata columns have correct types", {
  expect_type(china_io_2017_149_df$Code, "character")
  expect_type(china_io_2017_149_df$Description, "character")
  expect_type(china_io_2017_149_df$DescriptionInChinese, "character")
})

# Test 9: Confirm all sector columns (001-149) are numeric
test_that("china_io_2017_149_df sector columns have correct numeric types", {
  sector_cols <- sprintf("%03d", 1:149)
  for(col in sector_cols) {
    expect_type(china_io_2017_149_df[[col]], "double")
  }
})

# Test 10: Confirm special indicator columns are numeric
test_that("china_io_2017_149_df special indicator columns have correct types", {
  special_cols <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")
  for(col in special_cols) {
    expect_type(china_io_2017_149_df[[col]], "double")
  }
})

# Test 11: Confirm dataset dimensions consistency
test_that("china_io_2017_149_df has consistent dimensions", {
  expect_equal(dim(china_io_2017_149_df), c(156, 165))
})

# Test 12: Confirm all column names are unique
test_that("china_io_2017_149_df has unique column names", {
  expect_equal(length(names(china_io_2017_149_df)), length(unique(names(china_io_2017_149_df))))
})

# Test 13: Confirm character columns contain valid data types
test_that("china_io_2017_149_df character columns contain valid data types", {
  expect_true(all(is.character(china_io_2017_149_df$Code)))
  expect_true(all(is.character(china_io_2017_149_df$Description)))
  expect_true(all(is.character(china_io_2017_149_df$DescriptionInChinese)))
})

# Test 14: Confirm numeric data structure integrity
test_that("china_io_2017_149_df numeric columns contain valid numeric data", {
  numeric_cols <- c(sprintf("%03d", 1:149),
                    "TIU", "FU101", "FU102", "THC", "FU103", "TC",
                    "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")

  for(col in numeric_cols) {
    expect_true(is.numeric(china_io_2017_149_df[[col]]))
  }
})

# Test 15: Confirm sector column sequence integrity (001-149)
test_that("china_io_2017_149_df has complete sector sequence from 001 to 149", {
  sector_cols <- sprintf("%03d", 1:149)
  actual_sector_cols <- names(china_io_2017_149_df)[4:152]  # positions 4-152
  expect_equal(actual_sector_cols, sector_cols)
})

# Test 16: Confirm 2017 detailed 149-sector IO matrix structure
test_that("china_io_2017_149_df maintains proper 2017 detailed IO matrix structure", {
  # Should have 3 metadata columns + 149 sector columns + 13 special indicators = 165
  metadata_count <- 3
  sector_count <- 149
  special_count <- 13
  total_expected <- metadata_count + sector_count + special_count

  expect_equal(ncol(china_io_2017_149_df), total_expected)
  expect_equal(ncol(china_io_2017_149_df), 165)
})

# Test 17: Confirm no unexpected column types exist
test_that("china_io_2017_149_df contains only expected column types", {
  column_types <- sapply(china_io_2017_149_df, class)
  expected_types <- c("character", "numeric")
  expect_true(all(column_types %in% expected_types))
})

# Test 18: Confirm 2017 temporal matrix characteristics with 149 sectors
test_that("china_io_2017_149_df represents 2017 detailed 149-sector IO matrix", {
  # Check that we have exactly 149 detailed sector columns
  sector_pattern <- "^[0-9]{3}$"
  sector_cols <- names(china_io_2017_149_df)[grepl(sector_pattern, names(china_io_2017_149_df))]
  expect_equal(length(sector_cols), 149)

  # Check that sectors are properly numbered from 001 to 149
  sector_numbers <- as.numeric(sector_cols)
  expect_equal(min(sector_numbers), 1)
  expect_equal(max(sector_numbers), 149)
  expect_equal(length(unique(sector_numbers)), 149)
})

# Test 19: Confirm data completeness without structural assumptions
test_that("china_io_2017_149_df has complete data structure without missing columns", {
  for(col_name in names(china_io_2017_149_df)) {
    expect_true(exists("china_io_2017_149_df"))
    expect_true(col_name %in% names(china_io_2017_149_df))
  }
})

# Test 20: Confirm dataset object structural integrity
test_that("china_io_2017_149_df object maintains structural integrity", {
  expect_true(is.data.frame(china_io_2017_149_df))
  expect_false(is.null(china_io_2017_149_df))
  expect_true(nrow(china_io_2017_149_df) > 0)
  expect_true(ncol(china_io_2017_149_df) > 0)
})

# Test 21: Confirm 3-digit sector formatting consistency
test_that("china_io_2017_149_df uses consistent 3-digit sector formatting", {
  sector_cols <- sprintf("%03d", 1:149)
  actual_sectors <- names(china_io_2017_149_df)[4:152]

  # All sectors should be exactly 3 characters
  expect_true(all(nchar(actual_sectors) == 3))

  # All sectors should be numeric strings with leading zeros
  expect_true(all(grepl("^[0-9]{3}$", actual_sectors)))

  # Should match expected 3-digit format
  expect_equal(actual_sectors, sector_cols)
})

# Test 22: Confirm absence of Origin column (like other detailed versions)
test_that("china_io_2017_149_df correctly lacks Origin column", {
  expect_false("Origin" %in% names(china_io_2017_149_df))
  expect_equal(names(china_io_2017_149_df)[1:3], c("Code", "Description", "DescriptionInChinese"))
})

# Test 23: Confirm 2017 specific 149-sector detail level
test_that("china_io_2017_149_df represents 2017-specific 149-sector classification", {
  # Unique to 2017: has 149 sectors (not 153 like 2018/2020)
  sector_count <- sum(grepl("^[0-9]{3}$", names(china_io_2017_149_df)))
  expect_equal(sector_count, 149)

  # Should be intermediate detail level
  expect_true(ncol(china_io_2017_149_df) > 100)  # High detail
  expect_true(ncol(china_io_2017_149_df) < 200)  # Not excessive
  expect_equal(ncol(china_io_2017_149_df), 165)  # Exact 2017 149-sector structure
})

# Test 24: Confirm enhanced special indicators structure for 2017
test_that("china_io_2017_149_df has enhanced special indicators for detailed analysis", {
  detailed_indicators <- c("TIU", "FU101", "FU102", "THC", "FU103", "TC",
                           "FU201", "FU202", "GCF", "EX", "TFU", "IM", "GO")

  # Should have 13 special indicators (same as other detailed versions)
  expect_equal(length(detailed_indicators), 13)
  expect_true(all(detailed_indicators %in% names(china_io_2017_149_df)))

  # Verify detailed-version-only indicators
  detailed_only <- c("FU101", "FU102", "THC", "FU103", "GCF", "IM")
  expect_true(all(detailed_only %in% names(china_io_2017_149_df)))
})

# Test 25: Confirm 2017 dimensional characteristics
test_that("china_io_2017_149_df has 2017-specific dimensions", {
  # Unique row count for 2017 149-sector version
  expect_equal(nrow(china_io_2017_149_df), 156)

  # Total cells in the matrix
  total_cells <- nrow(china_io_2017_149_df) * ncol(china_io_2017_149_df)
  expected_cells <- 156 * 165
  expect_equal(total_cells, expected_cells)
  expect_equal(total_cells, 25740)
})

# Test 26: Confirm 2017 vs other years structural differentiation
test_that("china_io_2017_149_df differentiates from other temporal versions", {
  # Should have fewer sectors than 2018/2020 (149 vs 153)
  sector_count <- sum(grepl("^[0-9]{3}$", names(china_io_2017_149_df)))
  expect_equal(sector_count, 149)
  expect_true(sector_count < 153)  # Less than 2018/2020 versions

  # Should have more sectors than aggregated versions (149 vs 42)
  expect_true(sector_count > 42)   # More than aggregated versions

  # Should have unique dimensional signature
  expect_equal(dim(china_io_2017_149_df), c(156, 165))
})

# Test 27: Confirm intermediate detail level characteristics
test_that("china_io_2017_149_df represents intermediate detail level for 2017", {
  # Between aggregated (42) and maximum detail (153) levels
  total_cols <- ncol(china_io_2017_149_df)
  expect_true(total_cols > 60)   # More detailed than aggregated
  expect_true(total_cols < 170)  # Less than maximum detail
  expect_equal(total_cols, 165)  # Exact intermediate level

  # Appropriate scale for intermediate economic analysis
  expect_true(nrow(china_io_2017_149_df) > 100)
  expect_true(nrow(china_io_2017_149_df) < 200)
  expect_equal(nrow(china_io_2017_149_df), 156)
})
