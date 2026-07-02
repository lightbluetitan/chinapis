# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.2.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get China's Literacy Rate (Age 15+) from World Bank
#'
#' @description
#' Retrieves China's literacy rate for adults aged 15 and above,
#' expressed as a percentage, for the years 2010 to 2022 using the World Bank Open Data API.
#' The indicator used is \code{SE.ADT.LITR.ZS}.
#'
#' @return A tibble with the following columns:
#' \itemize{
#'   \item \code{indicator}: Indicator name (e.g., "Literacy rate, adult total (% of people ages 15 and above)")
#'   \item \code{country}: Country name ("China")
#'   \item \code{year}: Year of the data (integer)
#'   \item \code{value}: Literacy rate as numeric percentage
#' }
#'
#' @details
#' The function sends a GET request to the World Bank API.
#' If the API request fails or returns an error status code, the function returns \code{NULL} with an informative message.
#'
#' @note Requires internet connection. The data is retrieved in real time from the World Bank API.
#'
#' @source World Bank Open Data API: \url{https://data.worldbank.org/indicator/SE.ADT.LITR.ZS}
#'
#' @examples
#' if (interactive()) {
#'   get_china_literacy_rate()
#' }
#'
#' @seealso \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[dplyr]{as_tibble}}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_china_literacy_rate <- function() {

  url <- "https://api.worldbank.org/v2/country/CHN/indicator/SE.ADT.LITR.ZS?format=json&date=2010:2022&per_page=100"

  res <- tryCatch(
    httr::GET(url, httr::timeout(10)),
    error = function(e) return(NULL)
  )

  if (is.null(res)) {
    return(NULL)
  }

  if (httr::status_code(res) != 200) {
    return(NULL)
  }

  txt <- tryCatch(
    httr::content(res, as = "text", encoding = "UTF-8"),
    error = function(e) return(NULL)
  )

  if (is.null(txt)) {
    return(NULL)
  }

  content <- tryCatch(
    jsonlite::fromJSON(txt),
    error = function(e) return(NULL)
  )

  if (length(content) < 2 || is.null(content[[2]])) {
    return(NULL)
  }

  data <- content[[2]]

  dplyr::as_tibble(data.frame(
    indicator = data$indicator$value,
    country   = data$country$value,
    year      = as.integer(data$date),
    value     = data$value
  ))
}
