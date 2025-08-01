# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# chinese_dams_tbl_df

test_that("chinese_dams_tbl_df: object exists and is a tibble", {
  expect_true(exists("chinese_dams_tbl_df"))
  expect_s3_class(chinese_dams_tbl_df, "spec_tbl_df")
  expect_s3_class(chinese_dams_tbl_df, "tbl_df")
  expect_s3_class(chinese_dams_tbl_df, "data.frame")
})

test_that("chinese_dams_tbl_df: dimensions are correct", {
  expect_equal(ncol(chinese_dams_tbl_df), 8)
  expect_equal(nrow(chinese_dams_tbl_df), 158)
})

test_that("chinese_dams_tbl_df: column names are as expected", {
  expected_names <- c(
    "Name", "Province", "Second Province", "Impounds",
    "Height", "Type", "Complete", "Storage capacity (million m3)"
  )
  expect_named(chinese_dams_tbl_df, expected_names)
})

test_that("chinese_dams_tbl_df: column types are correct", {
  expect_type(chinese_dams_tbl_df$Name, "character")
  expect_type(chinese_dams_tbl_df$Province, "character")
  expect_type(chinese_dams_tbl_df$`Second Province`, "character")
  expect_type(chinese_dams_tbl_df$Impounds, "character")
  expect_type(chinese_dams_tbl_df$Height, "double")
  expect_type(chinese_dams_tbl_df$Type, "character")
  expect_type(chinese_dams_tbl_df$Complete, "character")
  expect_type(chinese_dams_tbl_df$`Storage capacity (million m3)`, "double")
})

test_that("chinese_dams_tbl_df: no completely empty columns", {
  expect_true(all(colSums(!is.na(chinese_dams_tbl_df)) > 0))
})

test_that("chinese_dams_tbl_df: valid structure (no missing columns)", {
  expect_false(any(is.null(names(chinese_dams_tbl_df))))
})

test_that("chinese_dams_tbl_df: consistent character encoding", {
  expect_true(all(vapply(chinese_dams_tbl_df, function(col) {
    !is.factor(col)
  }, logical(1))))
})
