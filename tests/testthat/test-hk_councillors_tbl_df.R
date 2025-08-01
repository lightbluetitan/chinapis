# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# hk_councillors_tbl_df

library(testthat)

test_that("hk_councillors_tbl_df is a tibble with correct dimensions", {
  expect_s3_class(hk_councillors_tbl_df, "tbl_df")
  expect_s3_class(hk_councillors_tbl_df, "tbl")
  expect_s3_class(hk_councillors_tbl_df, "data.frame")
  expect_equal(ncol(hk_councillors_tbl_df), 33)
  expect_equal(nrow(hk_councillors_tbl_df), 452)
})

test_that("hk_councillors_tbl_df has correct column names in expected order", {
  expected_names <- c(
    "ConstituencyCode", "Constituency_ZH", "Constituency_EN", "District_ZH", "District_EN",
    "Region_ZH", "Region_EN", "Party_ZH", "Party_EN", "DC_ZH", "DC_EN",
    "FacebookURL", "DCPageURL", "Address", "Phone", "Fax", "Email", "WebsiteURL",
    "DCProjectPageURL", "ElectionYear", "ElectionDate", "CandidateNum", "Occupation",
    "Political_ZH", "Political_EN", "Camp_ZH", "Camp_EN", "Vote", "VotePercentage",
    "Gender_ZH", "Gender_EN", "Tag_ZH", "Tag_EN"
  )
  expect_named(hk_councillors_tbl_df, expected_names, ignore.order = FALSE)
})

test_that("hk_councillors_tbl_df column types are as expected", {
  expect_type(hk_councillors_tbl_df$ConstituencyCode, "character")
  expect_type(hk_councillors_tbl_df$Constituency_ZH, "character")
  expect_type(hk_councillors_tbl_df$Constituency_EN, "character")
  expect_type(hk_councillors_tbl_df$District_ZH, "character")
  expect_type(hk_councillors_tbl_df$District_EN, "character")
  expect_type(hk_councillors_tbl_df$Region_ZH, "character")
  expect_type(hk_councillors_tbl_df$Region_EN, "character")
  expect_type(hk_councillors_tbl_df$Party_ZH, "character")
  expect_type(hk_councillors_tbl_df$Party_EN, "character")
  expect_type(hk_councillors_tbl_df$DC_ZH, "character")
  expect_type(hk_councillors_tbl_df$DC_EN, "character")
  expect_type(hk_councillors_tbl_df$FacebookURL, "character")
  expect_type(hk_councillors_tbl_df$DCPageURL, "character")
  expect_type(hk_councillors_tbl_df$Address, "character")
  expect_type(hk_councillors_tbl_df$Phone, "character")
  expect_type(hk_councillors_tbl_df$Fax, "character")
  expect_type(hk_councillors_tbl_df$Email, "character")
  expect_type(hk_councillors_tbl_df$WebsiteURL, "character")
  expect_type(hk_councillors_tbl_df$DCProjectPageURL, "character")
  expect_type(hk_councillors_tbl_df$ElectionYear, "double")
  expect_s3_class(hk_councillors_tbl_df$ElectionDate, "Date")
  expect_type(hk_councillors_tbl_df$CandidateNum, "double")
  expect_type(hk_councillors_tbl_df$Occupation, "character")
  expect_type(hk_councillors_tbl_df$Political_ZH, "character")
  expect_type(hk_councillors_tbl_df$Political_EN, "character")
  expect_type(hk_councillors_tbl_df$Camp_ZH, "character")
  expect_type(hk_councillors_tbl_df$Camp_EN, "character")
  expect_type(hk_councillors_tbl_df$Vote, "double")
  expect_type(hk_councillors_tbl_df$VotePercentage, "double")
  expect_type(hk_councillors_tbl_df$Gender_ZH, "character")
  expect_type(hk_councillors_tbl_df$Gender_EN, "character")
  expect_type(hk_councillors_tbl_df$Tag_ZH, "character")
  expect_type(hk_councillors_tbl_df$Tag_EN, "character")
})
