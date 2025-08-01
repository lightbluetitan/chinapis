# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Get Key Country Information About China from the REST Countries API
#'
#' @description
#' Retrieves selected, essential information about China or any other country by its full name.
#' The data is retrieved from the REST Countries API.
#'
#' See the API documentation at \url{https://restcountries.com/}.
#' Example API usage: \url{https://restcountries.com/v3.1/name/china?fullText=true}.
#'
#' @param name Full country name (common or official). For example: "China", "Mexico", "Peru".
#'
#' @return A data frame with 8 columns:
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
#' The function sends a GET request to the REST Countries API. If the API returns data for the specified country,
#' the function extracts and returns selected fields as a data frame. If the country is not found or the request fails,
#' the function returns \code{NULL} and prints a message.
#'
#' @note Requires internet connection. The data is retrieved in real time from the REST Countries API.
#'
#' @source REST Countries API: \url{https://restcountries.com/}
#'
#' @examples
#' \dontrun{
#' get_country_info_cn("China")
#' get_country_info_cn("France")
#' get_country_info_cn("Mexico")
#' }
#'
#' @seealso \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[base]{data.frame}}
#'
#' @importFrom httr GET content http_error
#' @importFrom jsonlite fromJSON
#' @export
get_country_info_cn <- function(name) {
  url <- paste0("https://restcountries.com/v3.1/name/", utils::URLencode(name), "?fullText=true")
  response <- httr::GET(url)
  if (httr::http_error(response)) {
    message("API request failed.")
    return(NULL)
  }
  data_raw <- httr::content(response, as = "text", encoding = "UTF-8")
  data_list <- jsonlite::fromJSON(data_raw)
  if (length(data_list) == 0) {
    message("No data found for the specified country.")
    return(NULL)
  }
  df <- data.frame(
    name_common   = data_list$name$common,
    name_official = data_list$name$official,
    region        = data_list$region,
    subregion     = data_list$subregion,
    capital       = paste(data_list$capital, collapse = ", "),
    area          = data_list$area,
    population    = data_list$population,
    languages     = paste(unlist(data_list$languages), collapse = ", "),
    stringsAsFactors = FALSE
  )
  return(df)
}
