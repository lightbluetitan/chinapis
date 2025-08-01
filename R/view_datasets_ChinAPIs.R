# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' View Available Datasets in ChinAPIs
#'
#' This function lists all datasets available in the 'ChinAPIs' package.
#' If the 'ChinAPIs' package is not loaded, it stops and shows an error message.
#' If no datasets are available, it returns a message and an empty vector.
#'
#' @return A character vector with the names of the available datasets.
#'         If no datasets are found, it returns an empty character vector.
#' @examples
#' if (requireNamespace("ChinAPIs", quietly = TRUE)) {
#'   library(ChinAPIs)
#'   view_datasets_ChinAPIs()
#' }
#' @export
view_datasets_ChinAPIs <- function() {
  # Check if the package is loaded
  if (!"ChinAPIs" %in% .packages()) {
    stop("The 'ChinAPIs' package must be loaded to view its datasets.")
  }

  # Extract dataset information
  datasets_info <- utils::data(package = "ChinAPIs")$results

  # Check if there are datasets available
  if (nrow(datasets_info) == 0) {
    message("No datasets are currently available in the 'ChinAPIs' package.")
    return(character(0))
  }

  # Extract dataset names
  datasets <- datasets_info[, "Item"]

  # Display the message with available datasets
  message("Datasets available in the 'ChinAPIs' package:")

  # Return a vector of datasets without printing to the console
  return(datasets)
}
