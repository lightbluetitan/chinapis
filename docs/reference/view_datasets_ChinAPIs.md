# View Available Datasets in ChinAPIs

This function lists all datasets available in the 'ChinAPIs' package. If
the 'ChinAPIs' package is not loaded, it stops and shows an error
message. If no datasets are available, it returns a message and an empty
vector.

## Usage

``` r
view_datasets_ChinAPIs()
```

## Value

A character vector with the names of the available datasets. If no
datasets are found, it returns an empty character vector.

## Examples

``` r
if (requireNamespace("ChinAPIs", quietly = TRUE)) {
  library(ChinAPIs)
  view_datasets_ChinAPIs()
}
#> Datasets available in the 'ChinAPIs' package:
#>  [1] "COVID19_HongKong_df"      "bj_air_quality_tbl_df"   
#>  [3] "china_admin_divisions_df" "china_cars_tbl_df"       
#>  [5] "china_corruption_tbl_df"  "china_io_2002_122_df"    
#>  [7] "china_io_2005_42_df"      "china_io_2007_135_df"    
#>  [9] "china_io_2010_41_df"      "china_io_2012_139_df"    
#> [11] "china_io_2015_42_df"      "china_io_2017_149_df"    
#> [13] "china_io_2017_42_df"      "china_io_2018_153_df"    
#> [15] "china_io_2018_42_df"      "china_io_2020_153_df"    
#> [17] "china_io_2020_42_df"      "chinese_cities_tbl_df"   
#> [19] "chinese_dams_tbl_df"      "family_name_df"          
#> [21] "given_name_df"            "health_family_life_df"   
#> [23] "hk_councillors_tbl_df"    "hk_districts_tbl_df"     
#> [25] "hk_population_tbl_df"     "hk_street_names_tbl_df"  
#> [27] "panda_locations_df"       "population_df"           
#> [29] "sars_hong_kong_list"      "shanghai_factories_df"   
#> [31] "shanghai_pm25_df"         "top1000name_prov_df"     
#> [33] "top100name_year_df"       "top50char_year_df"       
#> [35] "wenchuan_ptsd_matrix"    
```
