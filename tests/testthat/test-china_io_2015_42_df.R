# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# china_io_2015_42_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("china_io_2015_42_df is a data frame", {
  expect_s3_class(china_io_2015_42_df, "data.frame")
})

# Test 2: Confirm it has 59 columns
test_that("china_io_2015_42_df has 59 columns", {
  expect_equal(length(china_io_2015_42_df), 59)
})

# Test 3: Confirm it has 49 rows
test_that("china_io_2015_42_df has 49 rows", {
  expect_equal(nrow(china_io_2015_42_df), 49)
})

# Test 4: Confirm column names are correct
test_that("china_io_2015_42_df has correct column names", {
  expect_named(china_io_2015_42_df, c(
    "Code", "Description", "DescriptionInChinese", "01", "02", "03", "04", "05",
    "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17",
    "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29",
    "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41",
    "42", "TIU", "FU101", "FU102", "THC", "FU103", "TC", "FU201", "FU202",
    "GCF", "EX", "TFU", "IM", "ERR", "GO"
  ))
})

# Test 5: Confirm column types are as expected
test_that("china_io_2015_42_df columns have correct types", {
  expect_type(china_io_2015_42_df$Code, "character")
  expect_type(china_io_2015_42_df$Description, "character")
  expect_type(china_io_2015_42_df$DescriptionInChinese, "character")
  expect_type(china_io_2015_42_df$`01`, "double")
  expect_type(china_io_2015_42_df$`02`, "double")
  expect_type(china_io_2015_42_df$`03`, "double")
  expect_type(china_io_2015_42_df$`04`, "double")
  expect_type(china_io_2015_42_df$`05`, "double")
  expect_type(china_io_2015_42_df$`06`, "double")
  expect_type(china_io_2015_42_df$`07`, "double")
  expect_type(china_io_2015_42_df$`08`, "double")
  expect_type(china_io_2015_42_df$`09`, "double")
  expect_type(china_io_2015_42_df$`10`, "double")
  expect_type(china_io_2015_42_df$`11`, "double")
  expect_type(china_io_2015_42_df$`12`, "double")
  expect_type(china_io_2015_42_df$`13`, "double")
  expect_type(china_io_2015_42_df$`14`, "double")
  expect_type(china_io_2015_42_df$`15`, "double")
  expect_type(china_io_2015_42_df$`16`, "double")
  expect_type(china_io_2015_42_df$`17`, "double")
  expect_type(china_io_2015_42_df$`18`, "double")
  expect_type(china_io_2015_42_df$`19`, "double")
  expect_type(china_io_2015_42_df$`20`, "double")
  expect_type(china_io_2015_42_df$`21`, "double")
  expect_type(china_io_2015_42_df$`22`, "double")
  expect_type(china_io_2015_42_df$`23`, "double")
  expect_type(china_io_2015_42_df$`24`, "double")
  expect_type(china_io_2015_42_df$`25`, "double")
  expect_type(china_io_2015_42_df$`26`, "double")
  expect_type(china_io_2015_42_df$`27`, "double")
  expect_type(china_io_2015_42_df$`28`, "double")
  expect_type(china_io_2015_42_df$`29`, "double")
  expect_type(china_io_2015_42_df$`30`, "double")
  expect_type(china_io_2015_42_df$`31`, "double")
  expect_type(china_io_2015_42_df$`32`, "double")
  expect_type(china_io_2015_42_df$`33`, "double")
  expect_type(china_io_2015_42_df$`34`, "double")
  expect_type(china_io_2015_42_df$`35`, "double")
  expect_type(china_io_2015_42_df$`36`, "double")
  expect_type(china_io_2015_42_df$`37`, "double")
  expect_type(china_io_2015_42_df$`38`, "double")
  expect_type(china_io_2015_42_df$`39`, "double")
  expect_type(china_io_2015_42_df$`40`, "double")
  expect_type(china_io_2015_42_df$`41`, "double")
  expect_type(china_io_2015_42_df$`42`, "double")
  expect_type(china_io_2015_42_df$TIU, "double")
  expect_type(china_io_2015_42_df$FU101, "double")
  expect_type(china_io_2015_42_df$FU102, "double")
  expect_type(china_io_2015_42_df$THC, "double")
  expect_type(china_io_2015_42_df$FU103, "double")
  expect_type(china_io_2015_42_df$TC, "double")
  expect_type(china_io_2015_42_df$FU201, "double")
  expect_type(china_io_2015_42_df$FU202, "double")
  expect_type(china_io_2015_42_df$GCF, "double")
  expect_type(china_io_2015_42_df$EX, "double")
  expect_type(china_io_2015_42_df$TFU, "double")
  expect_type(china_io_2015_42_df$IM, "double")
  expect_type(china_io_2015_42_df$ERR, "double")
  expect_type(china_io_2015_42_df$GO, "double")
})

# Test 6: Confirm essential character columns are not entirely NA
test_that("china_io_2015_42_df essential character columns contain data", {
  expect_false(all(is.na(china_io_2015_42_df$Code)))
  expect_false(all(is.na(china_io_2015_42_df$Description)))
  expect_false(all(is.na(china_io_2015_42_df$DescriptionInChinese)))
})

# Test 7: Confirm numeric columns are properly formatted
test_that("china_io_2015_42_df numeric columns are properly formatted", {
  numeric_cols <- names(china_io_2015_42_df)[4:59]
  for(col in numeric_cols) {
    expect_true(is.numeric(china_io_2015_42_df[[col]]),
                info = paste("Column", col, "should be numeric"))
  }
})

# Test 8: Confirm dataset structure integrity
test_that("china_io_2015_42_df maintains structural integrity", {
  expect_equal(class(china_io_2015_42_df), "data.frame")
  expect_equal(dim(china_io_2015_42_df), c(49, 59))
  expect_true(all(names(china_io_2015_42_df) != ""))
  expect_false(any(duplicated(names(china_io_2015_42_df))))
})
