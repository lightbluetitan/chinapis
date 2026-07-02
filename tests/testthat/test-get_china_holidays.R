# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

# get_china_holidays

library(testthat)

holidays_data <- get_china_holidays(2025)

test_that("get_china_holidays returns valid tibble structure", {
  skip_if(is.null(holidays_data), "Function returned NULL")

  expect_s3_class(holidays_data, "tbl_df")
  expect_s3_class(holidays_data, "data.frame")
  expect_equal(ncol(holidays_data), 3)
  expect_true(nrow(holidays_data) > 0)
  expect_equal(names(holidays_data), c("date", "local_name", "name"))
})

test_that("get_china_holidays returns correct column types", {
  skip_if(is.null(holidays_data), "Function returned NULL")

  expect_s3_class(holidays_data$date, "Date")
  expect_type(holidays_data$local_name, "character")
  expect_type(holidays_data$name, "character")
})

test_that("get_china_holidays includes major Chinese holidays", {
  skip_if(is.null(holidays_data), "Function returned NULL")

  # Verificar que al menos algunos de los holidays principales estén presentes
  major_holidays <- c("New Year's Day", "National Day")
  found_holidays <- sum(major_holidays %in% holidays_data$name)

  expect_true(found_holidays > 0)
  expect_true(nrow(holidays_data) >= 5)
})

test_that("get_china_holidays dates are valid and in correct year", {
  skip_if(is.null(holidays_data), "Function returned NULL")

  expect_false(any(is.na(holidays_data$date)))
  expect_true(all(format(holidays_data$date, "%Y") == "2025"))
})

test_that("get_china_holidays handles invalid input", {
  expect_null(get_china_holidays("2025"))
  expect_null(get_china_holidays(c(2025, 2026)))
  expect_null(get_china_holidays(NA))
  expect_null(get_china_holidays(999))
  expect_null(get_china_holidays(3000))
})

test_that("get_china_holidays returns no duplicate dates", {
  skip_if(is.null(holidays_data), "Function returned NULL")

  expect_equal(nrow(holidays_data), length(unique(holidays_data$date)))
})
