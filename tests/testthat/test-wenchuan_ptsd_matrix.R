# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# wenchuan_ptsd_matrix

library(testthat)

# Test 1: Confirm it is a matrix
test_that("wenchuan_ptsd_matrix is a matrix", {
  expect_true(inherits(wenchuan_ptsd_matrix, "matrix"))
})

# Test 2: Confirm it is also recognized as an array
test_that("wenchuan_ptsd_matrix is also an array", {
  expect_true(inherits(wenchuan_ptsd_matrix, "array"))
})

# Test 3: Confirm it has 17 columns
test_that("wenchuan_ptsd_matrix has 17 columns", {
  expect_equal(ncol(wenchuan_ptsd_matrix), 17)
})

# Test 4: Confirm it has 362 rows
test_that("wenchuan_ptsd_matrix has 362 rows", {
  expect_equal(nrow(wenchuan_ptsd_matrix), 362)
})

# Test 5: Confirm the matrix has correct column names
test_that("wenchuan_ptsd_matrix has correct column names", {
  expect_equal(colnames(wenchuan_ptsd_matrix), c(
    "intrusion", "dreams", "flash", "upset", "physior", "avoidth", "avoidact", "amnesia",
    "lossint", "distant", "numb", "future", "sleep", "anger", "concen", "hyper", "startle"
  ))
})

# Test 6: Confirm the matrix contains numeric values
test_that("wenchuan_ptsd_matrix contains numeric values", {
  expect_type(wenchuan_ptsd_matrix, "double")
})
