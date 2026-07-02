# ChinAPIs 0.2.0

## Breaking Changes

- **Removed `get_country_info_cn()`** from the package. This function depended on the
  'REST Countries' API v3.1 endpoint, which was deprecated by its provider. The
  replacement v5 endpoint now requires an API key, which is incompatible with CRAN's
  policy that packages using Internet resources must work without user-supplied
  credentials. As a consequence, all associated tests, documentation, and examples
  have been removed, and references to the 'REST Countries API' have been removed
  from the package (`DESCRIPTION`, `README.md`, vignette).

- The package now integrates **two** APIs instead of three: **World Bank API** and
  **Nager.Date API**.

---

# ChinAPIs 0.1.1

## Bug Fixes

* Fixed all API functions to fail gracefully when requests are unavailable or return errors
* All functions now return `NULL` with informative messages instead of stopping execution
* Improved error handling and timeout management to comply with CRAN policies regarding internet resources
* Enhanced robustness across all World Bank API, REST Countries API, and Nager.Date API functions

## Test Improvements

* Reorganized and consolidated test suites for all functions using `testthat`
* Added `skip_if()` checks to handle `NULL` returns gracefully in tests
* Improved test coverage for edge cases and data validation
* Tests now properly validate API responses including `NA` values where appropriate

## Functions Updated

* `get_china_cpi()` - Enhanced error handling and validation
* `get_china_energy_use()` - Improved handling of missing data
* `get_china_gdp()` - Added robustness for formatted values
* `get_china_holidays()` - Better input validation and error messages
* `get_china_hospital_beds()` - Enhanced API response handling
* `get_china_life_expectancy()` - Improved data type validation
* `get_china_literacy_rate()` - Better handling of percentage ranges
* `get_china_population()` - Enhanced value formatting validation
* `get_china_unemployment()` - Improved error handling
* `get_country_info_cn()` - Enhanced defensive extraction of nested data

---

# ChinAPIs 0.1.0

## Initial Release

* First release of the `ChinAPIs` package
* Added functions to retrieve China-specific data from multiple public APIs
* Included 35+ datasets covering economic, demographic, geographic, health, and administrative data about China
* Comprehensive documentation and examples for all functions
