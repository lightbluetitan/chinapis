# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get Official Public Holidays in China for a Given Year
#'
#' @description
#' Retrieves the list of official public holidays in China for a specific year
#' using the Nager.Date public holidays API.
#'
#' @param year An integer indicating the year (e.g., 2024).
#'
#' @return A tibble with the following columns:
#' \itemize{
#'   \item \code{date}: Date of the holiday (class \code{Date})
#'   \item \code{local_name}: Holiday name in the local language
#'   \item \code{name}: Holiday name in English
#' }
#' Returns \code{NULL} if the API request fails.
#'
#' @source \url{https://date.nager.at/}
#'
#' @examples
#' if (interactive()) {
#'   get_china_holidays(2024)
#' }
#'
#' @importFrom httr GET timeout status_code content
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#'
#' @export
get_china_holidays <- function(year) {

  # Validate input
  if (!is.numeric(year) || length(year) != 1) {
    message("`year` must be a single numeric value.")
    return(NULL)
  }

  url <- sprintf(
    "https://date.nager.at/api/v3/PublicHolidays/%s/CN",
    as.integer(year)
  )

  # Safe request with timeout
  res <- tryCatch(
    httr::GET(url, httr::timeout(10)),
    error = function(e) {
      message("Nager.Date API request failed: ", e$message)
      return(NULL)
    }
  )

  if (is.null(res)) {
    return(NULL)
  }

  if (httr::status_code(res) != 200) {
    message("Nager.Date API returned status: ", httr::status_code(res))
    return(NULL)
  }

  txt <- tryCatch(
    httr::content(res, as = "text", encoding = "UTF-8"),
    error = function(e) return(NULL)
  )

  if (is.null(txt)) {
    return(NULL)
  }

  data <- tryCatch(
    jsonlite::fromJSON(txt),
    error = function(e) return(NULL)
  )

  if (is.null(data) || nrow(data) == 0) {
    message("No holiday data available for the specified year.")
    return(NULL)
  }

  tibble::tibble(
    date = as.Date(data$date),
    local_name = data$localName,
    name = data$name
  )
}
