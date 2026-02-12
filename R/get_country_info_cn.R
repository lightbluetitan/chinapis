# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.1
# Copyright (c) 2026 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get Key Country Information About China from the REST Countries API
#'
#' @description
#' Retrieves selected, essential information about China using the REST Countries API.
#' The function returns a tibble with core details such as population, area, capital, region,
#' and official language(s).
#'
#' See the API documentation at \url{https://restcountries.com/}.
#' Example API usage: \url{https://restcountries.com/v3.1/name/china?fullText=true}.
#'
#' @return A tibble with the following 8 columns:
#' \itemize{
#'   \item \code{name_common}: Common name of the country.
#'   \item \code{name_official}: Official name of the country.
#'   \item \code{region}: Geographical region.
#'   \item \code{subregion}: Subregion within the continent.
#'   \item \code{capital}: Capital city.
#'   \item \code{area}: Area in square kilometers.
#'   \item \code{population}: Population of the country.
#'   \item \code{languages}: Languages spoken in the country, as a comma-separated string.
#' }
#'
#' @details
#' The function sends a GET request to the REST Countries API. If the API returns data for China,
#' the function extracts and returns selected fields as a tibble. If the request fails or
#' China is not found, it returns \code{NULL} and prints a message.
#'
#' @note Requires internet connection. The data is retrieved in real time from the REST Countries API.
#'
#' @source REST Countries API: \url{https://restcountries.com/}
#'
#' @examples
#' get_country_info_cn()
#'
#' @importFrom httr GET content http_error
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#' @export
#' @export
get_country_info_cn <- function() {

  url <- "https://restcountries.com/v3.1/name/china?fullText=true"

  response <- tryCatch(
    httr::GET(url, httr::timeout(10)),
    error = function(e) return(NULL)
  )

  if (is.null(response)) {
    return(NULL)
  }

  if (httr::http_error(response)) {
    return(NULL)
  }

  txt <- tryCatch(
    httr::content(response, as = "text", encoding = "UTF-8"),
    error = function(e) return(NULL)
  )

  if (is.null(txt) || nchar(txt) == 0) {
    return(NULL)
  }

  data_list <- tryCatch(
    jsonlite::fromJSON(txt),
    error = function(e) return(NULL)
  )

  if (is.null(data_list) || length(data_list) == 0) {
    return(NULL)
  }

  data <- data_list[1, ]

  # Defensive extraction
  name_common   <- if (!is.null(data$name$common)) data$name$common else NA_character_
  name_official <- if (!is.null(data$name$official)) data$name$official else NA_character_
  region        <- if (!is.null(data$region)) data$region else NA_character_
  subregion     <- if (!is.null(data$subregion)) data$subregion else NA_character_
  capital       <- if (!is.null(data$capital)) paste(data$capital, collapse = ", ") else NA_character_
  area          <- if (!is.null(data$area)) data$area else NA_real_
  population    <- if (!is.null(data$population)) data$population else NA_real_
  languages     <- if (!is.null(data$languages)) paste(unlist(data$languages), collapse = ", ") else NA_character_

  tibble::tibble(
    name_common   = name_common,
    name_official = name_official,
    region        = region,
    subregion     = subregion,
    capital       = capital,
    area          = area,
    population    = population,
    languages     = languages
  )
}
