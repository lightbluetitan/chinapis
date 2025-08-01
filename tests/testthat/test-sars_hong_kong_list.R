# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# sars_hong_kong_list

library(testthat)

test_that("sars_hong_kong_list is a valid list object with expected structure", {
  # Object class
  expect_type(sars_hong_kong_list, "list")
  expect_equal(class(sars_hong_kong_list), "list")

  # Length of list
  expect_equal(length(sars_hong_kong_list), 2)

  # Names of list elements
  expect_named(sars_hong_kong_list, c("incidence", "si"))

  # Component: incidence
  expect_type(sars_hong_kong_list$incidence, "double")  # numeric = double
  expect_equal(length(sars_hong_kong_list$incidence), 107)

  # Component: si
  expect_type(sars_hong_kong_list$si, "double")  # numeric = double
  expect_equal(length(sars_hong_kong_list$si), 25)
})
