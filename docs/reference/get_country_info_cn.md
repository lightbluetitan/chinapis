# Get Key Country Information About China from the REST Countries API

Retrieves selected, essential information about China using the REST
Countries API. The function returns a tibble with core details such as
population, area, capital, region, and official language(s).

See the API documentation at <https://restcountries.com/>. Example API
usage: <https://restcountries.com/v3.1/name/china?fullText=true>.

## Usage

``` r
get_country_info_cn()
```

## Source

REST Countries API: <https://restcountries.com/>

## Value

A tibble with the following 8 columns:

- `name_common`: Common name of the country.

- `name_official`: Official name of the country.

- `region`: Geographical region.

- `subregion`: Subregion within the continent.

- `capital`: Capital city.

- `area`: Area in square kilometers.

- `population`: Population of the country.

- `languages`: Languages spoken in the country, as a comma-separated
  string.

## Details

The function sends a GET request to the REST Countries API. If the API
returns data for China, the function extracts and returns selected
fields as a tibble. If the request fails or China is not found, it
returns `NULL` and prints a message.

## Note

Requires internet connection. The data is retrieved in real time from
the REST Countries API.

## Examples

``` r
get_country_info_cn()
#> # A tibble: 1 × 8
#>   name_common name_official region subregion capital   area population languages
#>   <chr>       <chr>         <chr>  <chr>     <chr>    <dbl>      <int> <chr>    
#> 1 China       People's Rep… Asia   Eastern … Beijing 9.71e6 1408280000 Chinese  
```
