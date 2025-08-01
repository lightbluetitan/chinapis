# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2012_139_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2012_139_df is a data frame", {
  expect_s3_class(china_io_2012_139_df, "data.frame")
})

# Test 2: Confirm it has 155 columns
test_that("china_io_2012_139_df has 155 columns", {
  expect_equal(length(china_io_2012_139_df), 155)
})

# Test 3: Confirm it has 146 rows
test_that("china_io_2012_139_df has 146 rows", {
  expect_equal(nrow(china_io_2012_139_df), 146)
})

# Test 4: Confirm column names are correct
test_that("china_io_2012_139_df has correct column names", {
  expect_named(china_io_2012_139_df, c(
    "Code", "Description", "DescriptionInChinese",
    "001", "002", "003", "004", "005", "006", "007", "008", "009", "010",
    "011", "012", "013", "014", "015", "016", "017", "018", "019", "020",
    "021", "022", "023", "024", "025", "026", "027", "028", "029", "030",
    "031", "032", "033", "034", "035", "036", "037", "038", "039", "040",
    "041", "042", "043", "044", "045", "046", "047", "048", "049", "050",
    "051", "052", "053", "054", "055", "056", "057", "058", "059", "060",
    "061", "062", "063", "064", "065", "066", "067", "068", "069", "070",
    "071", "072", "073", "074", "075", "076", "077", "078", "079", "080",
    "081", "082", "083", "084", "085", "086", "087", "088", "089", "090",
    "091", "092", "093", "094", "095", "096", "097", "098", "099", "100",
    "101", "102", "103", "104", "105", "106", "107", "108", "109", "110",
    "111", "112", "113", "114", "115", "116", "117", "118", "119", "120",
    "121", "122", "123", "124", "125", "126", "127", "128", "129", "130",
    "131", "132", "133", "134", "135", "136", "137", "138", "139",
    "TIU", "FU101", "FU102", "FU103", "TC", "FU201", "FU202", "GCF",
    "EX", "TFU", "IM", "ERR", "GO"
  ))
})

# Test 5: Confirm the first three columns are character type
test_that("china_io_2012_139_df first three columns have correct character types", {
  expect_type(china_io_2012_139_df$Code, "character")
  expect_type(china_io_2012_139_df$Description, "character")
  expect_type(china_io_2012_139_df$DescriptionInChinese, "character")
})

# Test 6: Confirm all numbered columns (001-139) are numeric
test_that("china_io_2012_139_df numbered columns are numeric", {
  numbered_cols <- sprintf("%03d", 1:139)
  for(col in numbered_cols) {
    expect_type(china_io_2012_139_df[[col]], "double")
  }
})

# Test 7: Confirm all special identifier columns are numeric
test_that("china_io_2012_139_df special identifier columns are numeric", {
  special_cols <- c("TIU", "FU101", "FU102", "FU103", "TC", "FU201",
                    "FU202", "GCF", "EX", "TFU", "IM", "ERR", "GO")
  for(col in special_cols) {
    expect_type(china_io_2012_139_df[[col]], "double")
  }
})

# Test 8: Confirm dataset dimensions are consistent
test_that("china_io_2012_139_df has consistent dimensions", {
  expect_equal(dim(china_io_2012_139_df), c(146, 155))
  expect_equal(nrow(china_io_2012_139_df) * ncol(china_io_2012_139_df), 22630)
})

# Test 9: Confirm character columns contain actual data
test_that("china_io_2012_139_df character columns are not entirely empty", {
  expect_false(all(is.na(china_io_2012_139_df$Code)))
  expect_false(all(is.na(china_io_2012_139_df$Description)))
  expect_false(all(is.na(china_io_2012_139_df$DescriptionInChinese)))
  expect_false(all(china_io_2012_139_df$Code == ""))
  expect_false(all(china_io_2012_139_df$Description == ""))
  expect_false(all(china_io_2012_139_df$DescriptionInChinese == ""))
})

# Test 10: Confirm no duplicate column names exist
test_that("china_io_2012_139_df has no duplicate column names", {
  expect_false(any(duplicated(names(china_io_2012_139_df))))
  expect_equal(length(unique(names(china_io_2012_139_df))), 155)
})

# Test 11: Confirm proper three-digit formatting for numbered columns
test_that("china_io_2012_139_df numbered columns follow three-digit format", {
  numbered_cols <- names(china_io_2012_139_df)[4:142]
  expected_format <- sprintf("%03d", 1:139)
  expect_equal(numbered_cols, expected_format)
})

# Test 12: Confirm structural integrity of the complete dataset
test_that("china_io_2012_139_df maintains complete structural integrity", {
  expect_true(is.data.frame(china_io_2012_139_df))
  expect_equal(class(china_io_2012_139_df), "data.frame")
  expect_true(all(names(china_io_2012_139_df) != ""))
  expect_true(all(!is.null(names(china_io_2012_139_df))))
  expect_equal(length(names(china_io_2012_139_df)), ncol(china_io_2012_139_df))
})

# Test 13: Confirm numeric data consistency across all numeric columns
test_that("china_io_2012_139_df numeric columns have consistent data types", {
  numeric_cols <- names(china_io_2012_139_df)[4:155]
  numeric_types <- sapply(china_io_2012_139_df[numeric_cols], typeof)
  expect_true(all(numeric_types == "double"))
  expect_equal(length(numeric_cols), 152)
})

# Test 14: Confirm data completeness structure
test_that("china_io_2012_139_df has proper data completeness structure", {
  expect_true(nrow(china_io_2012_139_df) > 0)
  expect_true(ncol(china_io_2012_139_df) > 0)
  expect_false(is.null(china_io_2012_139_df))
  expect_true(length(china_io_2012_139_df) == 155)
})
