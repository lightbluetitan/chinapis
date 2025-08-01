# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# view_datasets_ChinAPIs

library(testthat)
library(ChinAPIs)

test_that("view_datasets_ChinAPIs works when package is loaded", {
  result <- view_datasets_ChinAPIs()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_ChinAPIs prints correct message", {
  output <- capture_messages(view_datasets_ChinAPIs())
  expect_match(
    output[1],
    "Datasets available in the 'ChinAPIs' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_ChinAPIs returns expected datasets", {
  datasets <- view_datasets_ChinAPIs()
  expected_datasets <- c(
    "bj_air_quality_tbl_df",
    "china_admin_divisions_df",
    "china_cars_tbl_df",
    "china_corruption_tbl_df",
    "china_io_2002_122_df",
    "china_io_2005_42_df",
    "china_io_2007_135_df",
    "china_io_2010_41_df",
    "china_io_2012_139_df",
    "china_io_2015_42_df",
    "china_io_2017_149_df",
    "china_io_2017_42_df",
    "china_io_2018_153_df",
    "china_io_2018_42_df",
    "china_io_2020_153_df",
    "china_io_2020_42_df",
    "chinese_cities_tbl_df",
    "chinese_dams_tbl_df",
    "COVID19_HongKong_df",
    "family_name_df",
    "given_name_df",
    "health_family_life_df",
    "hk_councillors_tbl_df",
    "hk_districts_tbl_df",
    "hk_population_tbl_df",
    "hk_street_names_tbl_df",
    "panda_locations_df",
    "population_df",
    "sars_hong_kong_list",
    "shanghai_factories_df",
    "shanghai_pm25_df",
    "top1000name_prov_df",
    "top100name_year_df",
    "top50char_year_df",
    "wenchuan_ptsd_matrix"


  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})
