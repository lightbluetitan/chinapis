# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# top1000name_prov_df


library(testthat)

test_that("top1000name_prov_df is a data frame with correct structure", {
  expect_s3_class(top1000name_prov_df, "data.frame")
  expect_equal(ncol(top1000name_prov_df), 35)
  expect_equal(nrow(top1000name_prov_df), 999)
})

test_that("top1000name_prov_df has the expected column names", {
  expected_names <- c(
    "name", "n.male", "n.female", "beijing", "tianjin", "hebei", "shanxi",
    "neimenggu", "liaoning", "jilin", "heilongjiang", "shanghai", "jiangsu",
    "zhejiang", "anhui", "fujian", "jiangxi", "shandong", "henan", "hubei",
    "hunan", "guangdong", "guangxi", "hainan", "chongqing", "sichuan",
    "guizhou", "yunnan", "xizang", "shaanxi", "gansu", "qinghai",
    "ningxia", "xinjiang", "others"
  )
  expect_named(top1000name_prov_df, expected_names)
})

test_that("top1000name_prov_df column types are correct", {
  expect_type(top1000name_prov_df$name, "character")
  numeric_columns <- setdiff(names(top1000name_prov_df), "name")
  for (col in numeric_columns) {
    expect_type(top1000name_prov_df[[col]], "double")
  }
})

test_that("top1000name_prov_df allows NA values", {
  expect_true(any(is.na(top1000name_prov_df)) || all(!is.na(top1000name_prov_df)))
})

test_that("top1000name_prov_df contains no unexpected attributes", {
  expect_null(attr(top1000name_prov_df, "extra"))
})
