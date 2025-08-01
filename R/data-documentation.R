# ChinAPIs - Access Chinese Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (c) 2025 Renzo Caceres Rossi
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.


#' Administrative Divisions of China
#'
#' This dataset, china_admin_divisions_df, is a data frame containing the codes and names of China's
#' administrative divisions. The dataset includes 3212 observations and 2 variables, providing identifiers
#' and names for each administrative unit. This can be useful for geographic analysis, mapping, and
#' linking statistical data to spatial boundaries.
#'
#' The dataset name has been kept as 'china_admin_divisions_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name china_admin_divisions_df
#' @format A data frame with 3212 observations and 2 variables:
#' \describe{
#'   \item{ID}{Administrative division code (integer)}
#'   \item{name}{Name of the administrative division (character)}
#' }
#' @source Data taken from the cnmap package version 0.1.0
#' @usage data(china_admin_divisions_df)
#' @export
load("data/china_admin_divisions_df.rda")
NULL


#' China's Corruption Investigations
#'
#' This dataset, china_corruption_tbl_df, is a tibble containing information on officials investigated
#' during Xi Jinping's anti-corruption campaign. The dataset includes 10 observations and 6 variables,
#' covering administrative divisions such as provinces, prefectures, and counties, along with their
#' corresponding codes. While the original dataset contains data on nearly 20,000 individuals, this
#' version includes a simplified subset of administrative identifiers for illustrative purposes.
#'
#' The dataset name has been kept as 'china_corruption_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name china_corruption_tbl_df
#' @format A tibble with 10 observations and 6 variables:
#' \describe{
#'   \item{province}{Province code (numeric)}
#'   \item{prefecture}{Name of the prefecture (character)}
#'   \item{county}{Name of the county (character)}
#'   \item{province_id}{Province identifier (numeric)}
#'   \item{prefecture_id}{Prefecture identifier (numeric)}
#'   \item{county_id}{County identifier (numeric)}
#' }
#' @source Data taken from the regioncode package version 0.1.2
#' @usage data(china_corruption_tbl_df)
#' @export
load("data/china_corruption_tbl_df.rda")
NULL


#' Giant Panda Location Data
#'
#' This dataset, panda_locations_df, is a data frame containing giant panda location data.
#' The dataset includes 147 observations and 4 variables, representing spatial and temporal
#' coordinates of tracked panda movements. This dataset can be used for spatial analysis,
#' movement modeling, or wildlife tracking applications.
#'
#' The dataset name has been kept as 'panda_locations_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name panda_locations_df
#' @format A data frame with 147 observations and 4 variables:
#' \describe{
#'   \item{time}{Timestamp of location observation (numeric)}
#'   \item{x}{X coordinate (numeric)}
#'   \item{y}{Y coordinate (numeric)}
#'   \item{z}{Z coordinate (integer)}
#' }
#' @source Data taken from the mkde package version 0.3
#' @usage data(panda_locations_df)
#' @export
load("data/panda_locations_df.rda")
NULL


#' PTSD Symptoms of Wenchuan Earthquake Survivors
#'
#' This dataset, wenchuan_ptsd_matrix, is a matrix containing items measuring symptoms of post-traumatic
#' stress disorder (PTSD) in survivors of the Wenchuan earthquake. Participants were 362 Chinese adults
#' who lost at least one child in the disaster. The matrix includes 362 observations and 17 variables,
#' each representing a symptom of PTSD as assessed by McNally et al. (2015).
#'
#' The dataset name has been kept as 'wenchuan_ptsd_matrix' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'matrix' indicates that the dataset is a matrix object. The original content has not been modified
#' in any way.
#'
#' @name wenchuan_ptsd_matrix
#' @format A matrix with 362 observations and 17 variables:
#' \describe{
#'   \item{intrusion}{Symptom: Intrusive thoughts (numeric)}
#'   \item{dreams}{Symptom: Distressing dreams (numeric)}
#'   \item{flash}{Symptom: Flashbacks (numeric)}
#'   \item{upset}{Symptom: Psychological distress (numeric)}
#'   \item{physior}{Symptom: Physiological reactivity (numeric)}
#'   \item{avoidth}{Symptom: Avoidance of thoughts (numeric)}
#'   \item{avoidact}{Symptom: Avoidance of activities (numeric)}
#'   \item{amnesia}{Symptom: Inability to recall aspects of trauma (numeric)}
#'   \item{lossint}{Symptom: Loss of interest (numeric)}
#'   \item{distant}{Symptom: Feeling distant from others (numeric)}
#'   \item{numb}{Symptom: Emotional numbness (numeric)}
#'   \item{future}{Symptom: Foreshortened future (numeric)}
#'   \item{sleep}{Symptom: Sleep disturbances (numeric)}
#'   \item{anger}{Symptom: Irritability or anger (numeric)}
#'   \item{concen}{Symptom: Concentration difficulties (numeric)}
#'   \item{hyper}{Symptom: Hypervigilance (numeric)}
#'   \item{startle}{Symptom: Exaggerated startle response (numeric)}
#' }
#' @source Data taken from the bgms package version 0.1.4.2
#' @usage data(wenchuan_ptsd_matrix)
#' @export
load("data/wenchuan_ptsd_matrix.rda")
NULL



#' Chinese Surnames and National Frequency (1930–2008)
#'
#' This dataset, family_name_df, is a data frame containing 1,806 Chinese surnames along with
#' their frequency and distribution across China. The dataset includes 1806 observations and
#' 7 variables, covering information such as whether a surname is compound, its initial,
#' frequency ranks, and relative frequency between 1930 and 2008. This dataset is useful
#' for sociolinguistic analysis, demography, and historical population studies.
#'
#' The dataset name has been kept as 'family_name_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name family_name_df
#' @format A data frame with 1806 observations and 7 variables:
#' \describe{
#'   \item{surname}{Chinese surname (character)}
#'   \item{compound}{Indicates if the surname is compound (numeric)}
#'   \item{initial}{Initial letter of surname in Pinyin (character)}
#'   \item{initial.rank}{Rank of the initial letter (numeric)}
#'   \item{n.1930_2008}{Estimated number of people with the surname (1930–2008) (numeric)}
#'   \item{ppm.1930_2008}{Relative frequency per million (1930–2008) (numeric)}
#'   \item{surname.uniqueness}{Surname uniqueness score (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(family_name_df)
#' @export
load("data/family_name_df.rda")
NULL


#' Chinese Given Name Characters and Frequency (1930–2008)
#'
#' This dataset, given_name_df, is a data frame containing 2,614 Chinese characters commonly used
#' in given names, along with nationwide frequency data. The dataset includes 2614 observations and
#' 25 variables, providing information such as stroke count, gender distribution, historical usage,
#' frequency per million, uniqueness, and perceived name traits such as warmth and competence.
#'
#' The dataset name has been kept as 'given_name_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name given_name_df
#' @format A data frame with 2614 observations and 25 variables:
#' \describe{
#'   \item{character}{Chinese character used in given names (character)}
#'   \item{pinyin}{Pronunciation in Pinyin (character)}
#'   \item{bihua}{Number of strokes in the character (numeric)}
#'   \item{n.male}{Number of males with this character in their name (numeric)}
#'   \item{n.female}{Number of females with this character in their name (numeric)}
#'   \item{name.gender}{Gender index (numeric)}
#'   \item{n.1930_1959}{Number of occurrences between 1930–1959 (numeric)}
#'   \item{n.1960_1969}{Number of occurrences between 1960–1969 (numeric)}
#'   \item{n.1970_1979}{Number of occurrences between 1970–1979 (numeric)}
#'   \item{n.1980_1989}{Number of occurrences between 1980–1989 (numeric)}
#'   \item{n.1990_1999}{Number of occurrences between 1990–1999 (numeric)}
#'   \item{n.2000_2008}{Number of occurrences between 2000–2008 (numeric)}
#'   \item{ppm.1930_1959}{Frequency per million (1930–1959) (numeric)}
#'   \item{ppm.1960_1969}{Frequency per million (1960–1969) (numeric)}
#'   \item{ppm.1970_1979}{Frequency per million (1970–1979) (numeric)}
#'   \item{ppm.1980_1989}{Frequency per million (1980–1989) (numeric)}
#'   \item{ppm.1990_1999}{Frequency per million (1990–1999) (numeric)}
#'   \item{ppm.2000_2008}{Frequency per million (2000–2008) (numeric)}
#'   \item{name.ppm}{Overall frequency per million (numeric)}
#'   \item{name.uniqueness}{Uniqueness score of the name (numeric)}
#'   \item{corpus.ppm}{Frequency in linguistic corpus (numeric)}
#'   \item{corpus.uniqueness}{Uniqueness in corpus (numeric)}
#'   \item{name.valence}{Emotional valence of the name (numeric)}
#'   \item{name.warmth}{Perceived warmth of the name (numeric)}
#'   \item{name.competence}{Perceived competence of the name (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(given_name_df)
#' @export
load("data/given_name_df.rda")
NULL


#' Population Statistics from the Chinese Name Database
#'
#' This dataset, population_df, is a data frame containing population statistics derived from
#' the Chinese name database. The dataset includes 40 observations and 3 variables, representing
#' raw and corrected counts for various demographic items related to naming patterns and coverage.
#' It supports analyses of representativeness, name distribution, and scaling adjustments.
#'
#' The dataset name has been kept as 'population_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name population_df
#' @format A data frame with 40 observations and 3 variables:
#' \describe{
#'   \item{item}{Demographic or classification item (character)}
#'   \item{n}{Raw count (numeric)}
#'   \item{n.corrected}{Corrected count (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(population_df)
#' @export
load("data/population_df.rda")
NULL



#' Top 1,000 Given Names by Province in Mainland China
#'
#' This dataset, top1000name_prov_df, is a data frame containing the 1,000 most common given names
#' across 31 provinces in mainland China. The dataset includes 999 observations and 35 variables,
#' reporting name counts by gender and by individual province. This dataset enables geographic
#' comparisons of name popularity and sociocultural naming trends across Chinese regions.
#'
#' The dataset name has been kept as 'top1000name_prov_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name top1000name_prov_df
#' @format A data frame with 999 observations and 35 variables:
#' \describe{
#'   \item{name}{Given name (character)}
#'   \item{n.male}{Number of males with this name (numeric)}
#'   \item{n.female}{Number of females with this name (numeric)}
#'   \item{beijing}{Name frequency in Beijing (numeric)}
#'   \item{tianjin}{Name frequency in Tianjin (numeric)}
#'   \item{hebei}{Name frequency in Hebei (numeric)}
#'   \item{shanxi}{Name frequency in Shanxi (numeric)}
#'   \item{neimenggu}{Name frequency in Inner Mongolia (numeric)}
#'   \item{liaoning}{Name frequency in Liaoning (numeric)}
#'   \item{jilin}{Name frequency in Jilin (numeric)}
#'   \item{heilongjiang}{Name frequency in Heilongjiang (numeric)}
#'   \item{shanghai}{Name frequency in Shanghai (numeric)}
#'   \item{jiangsu}{Name frequency in Jiangsu (numeric)}
#'   \item{zhejiang}{Name frequency in Zhejiang (numeric)}
#'   \item{anhui}{Name frequency in Anhui (numeric)}
#'   \item{fujian}{Name frequency in Fujian (numeric)}
#'   \item{jiangxi}{Name frequency in Jiangxi (numeric)}
#'   \item{shandong}{Name frequency in Shandong (numeric)}
#'   \item{henan}{Name frequency in Henan (numeric)}
#'   \item{hubei}{Name frequency in Hubei (numeric)}
#'   \item{hunan}{Name frequency in Hunan (numeric)}
#'   \item{guangdong}{Name frequency in Guangdong (numeric)}
#'   \item{guangxi}{Name frequency in Guangxi (numeric)}
#'   \item{hainan}{Name frequency in Hainan (numeric)}
#'   \item{chongqing}{Name frequency in Chongqing (numeric)}
#'   \item{sichuan}{Name frequency in Sichuan (numeric)}
#'   \item{guizhou}{Name frequency in Guizhou (numeric)}
#'   \item{yunnan}{Name frequency in Yunnan (numeric)}
#'   \item{xizang}{Name frequency in Tibet (numeric)}
#'   \item{shaanxi}{Name frequency in Shaanxi (numeric)}
#'   \item{gansu}{Name frequency in Gansu (numeric)}
#'   \item{qinghai}{Name frequency in Qinghai (numeric)}
#'   \item{ningxia}{Name frequency in Ningxia (numeric)}
#'   \item{xinjiang}{Name frequency in Xinjiang (numeric)}
#'   \item{others}{Name frequency in unspecified or other regions (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(top1000name_prov_df)
#' @export
load("data/top1000name_prov_df.rda")
NULL


#' Top 100 Given Names in 6 Birth Cohorts
#'
#' This dataset, top100name_year_df, is a data frame containing the top 100 given names in China across
#' six birth cohorts: 1950, 1960, 1970, 1980, 1990, and 2000. It includes rankings and frequencies
#' for all individuals, as well as separately for males and females. The dataset provides insights into
#' naming trends and gender differences over time.
#'
#' The dataset name has been kept as 'top100name_year_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name top100name_year_df
#' @format A data frame with 100 observations and 37 variables:
#' \describe{
#'   \item{top100}{Ranking from 1 to 100 (numeric)}
#'   \item{name.all.1950}{Most common name (all genders) in 1950 (character)}
#'   \item{name.all.1960}{Most common name (all genders) in 1960 (character)}
#'   \item{name.all.1970}{Most common name (all genders) in 1970 (character)}
#'   \item{name.all.1980}{Most common name (all genders) in 1980 (character)}
#'   \item{name.all.1990}{Most common name (all genders) in 1990 (character)}
#'   \item{name.all.2000}{Most common name (all genders) in 2000 (character)}
#'   \item{n.all.1950}{Number of people with the name in 1950 (numeric)}
#'   \item{n.all.1960}{Number of people with the name in 1960 (numeric)}
#'   \item{n.all.1970}{Number of people with the name in 1970 (numeric)}
#'   \item{n.all.1980}{Number of people with the name in 1980 (numeric)}
#'   \item{n.all.1990}{Number of people with the name in 1990 (numeric)}
#'   \item{n.all.2000}{Number of people with the name in 2000 (numeric)}
#'   \item{name.m.1950}{Most common male name in 1950 (character)}
#'   \item{name.m.1960}{Most common male name in 1960 (character)}
#'   \item{name.m.1970}{Most common male name in 1970 (character)}
#'   \item{name.m.1980}{Most common male name in 1980 (character)}
#'   \item{name.m.1990}{Most common male name in 1990 (character)}
#'   \item{name.m.2000}{Most common male name in 2000 (character)}
#'   \item{n.m.1950}{Number of males with the name in 1950 (numeric)}
#'   \item{n.m.1960}{Number of males with the name in 1960 (numeric)}
#'   \item{n.m.1970}{Number of males with the name in 1970 (numeric)}
#'   \item{n.m.1980}{Number of males with the name in 1980 (numeric)}
#'   \item{n.m.1990}{Number of males with the name in 1990 (numeric)}
#'   \item{n.m.2000}{Number of males with the name in 2000 (numeric)}
#'   \item{name.f.1950}{Most common female name in 1950 (character)}
#'   \item{name.f.1960}{Most common female name in 1960 (character)}
#'   \item{name.f.1970}{Most common female name in 1970 (character)}
#'   \item{name.f.1980}{Most common female name in 1980 (character)}
#'   \item{name.f.1990}{Most common female name in 1990 (character)}
#'   \item{name.f.2000}{Most common female name in 2000 (character)}
#'   \item{n.f.1950}{Number of females with the name in 1950 (numeric)}
#'   \item{n.f.1960}{Number of females with the name in 1960 (numeric)}
#'   \item{n.f.1970}{Number of females with the name in 1970 (numeric)}
#'   \item{n.f.1980}{Number of females with the name in 1980 (numeric)}
#'   \item{n.f.1990}{Number of females with the name in 1990 (numeric)}
#'   \item{n.f.2000}{Number of females with the name in 2000 (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(top100name_year_df)
#' @export
load("data/top100name_year_df.rda")
NULL


#' Top 50 Given-Name Characters in 6 Birth Cohorts
#'
#' This dataset, top50char_year_df, is a data frame containing the top 50 most common Chinese characters
#' used in given names across six birth cohorts: 1950, 1960, 1970, 1980, 1990, and 2000. It includes rankings
#' and frequencies for all individuals, as well as separately for males and females. The dataset provides
#' insights into naming character trends and gender differences over time.
#'
#' The dataset name has been kept as 'top50char_year_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name top50char_year_df
#' @format A data frame with 50 observations and 37 variables:
#' \describe{
#'   \item{top50}{Ranking from 1 to 50 (numeric)}
#'   \item{char.all.1950}{Most common given-name character (all genders) in 1950 (character)}
#'   \item{char.all.1960}{Most common given-name character (all genders) in 1960 (character)}
#'   \item{char.all.1970}{Most common given-name character (all genders) in 1970 (character)}
#'   \item{char.all.1980}{Most common given-name character (all genders) in 1980 (character)}
#'   \item{char.all.1990}{Most common given-name character (all genders) in 1990 (character)}
#'   \item{char.all.2000}{Most common given-name character (all genders) in 2000 (character)}
#'   \item{n.all.1950}{Number of people with the character in 1950 (numeric)}
#'   \item{n.all.1960}{Number of people with the character in 1960 (numeric)}
#'   \item{n.all.1970}{Number of people with the character in 1970 (numeric)}
#'   \item{n.all.1980}{Number of people with the character in 1980 (numeric)}
#'   \item{n.all.1990}{Number of people with the character in 1990 (numeric)}
#'   \item{n.all.2000}{Number of people with the character in 2000 (numeric)}
#'   \item{char.m.1950}{Most common male given-name character in 1950 (character)}
#'   \item{char.m.1960}{Most common male given-name character in 1960 (character)}
#'   \item{char.m.1970}{Most common male given-name character in 1970 (character)}
#'   \item{char.m.1980}{Most common male given-name character in 1980 (character)}
#'   \item{char.m.1990}{Most common male given-name character in 1990 (character)}
#'   \item{char.m.2000}{Most common male given-name character in 2000 (character)}
#'   \item{n.m.1950}{Number of males with the character in 1950 (numeric)}
#'   \item{n.m.1960}{Number of males with the character in 1960 (numeric)}
#'   \item{n.m.1970}{Number of males with the character in 1970 (numeric)}
#'   \item{n.m.1980}{Number of males with the character in 1980 (numeric)}
#'   \item{n.m.1990}{Number of males with the character in 1990 (numeric)}
#'   \item{n.m.2000}{Number of males with the character in 2000 (numeric)}
#'   \item{char.f.1950}{Most common female given-name character in 1950 (character)}
#'   \item{char.f.1960}{Most common female given-name character in 1960 (character)}
#'   \item{char.f.1970}{Most common female given-name character in 1970 (character)}
#'   \item{char.f.1980}{Most common female given-name character in 1980 (character)}
#'   \item{char.f.1990}{Most common female given-name character in 1990 (character)}
#'   \item{char.f.2000}{Most common female given-name character in 2000 (character)}
#'   \item{n.f.1950}{Number of females with the character in 1950 (numeric)}
#'   \item{n.f.1960}{Number of females with the character in 1960 (numeric)}
#'   \item{n.f.1970}{Number of females with the character in 1970 (numeric)}
#'   \item{n.f.1980}{Number of females with the character in 1980 (numeric)}
#'   \item{n.f.1990}{Number of females with the character in 1990 (numeric)}
#'   \item{n.f.2000}{Number of females with the character in 2000 (numeric)}
#' }
#' @source Data taken from the ChineseNames package version 2023.8
#' @usage data(top50char_year_df)
#' @export
load("data/top50char_year_df.rda")
NULL


#' COVID-19 Offspring Cases in Hong Kong (Jan–Apr 2020)
#'
#' This dataset, COVID19_HongKong_df, is a data frame containing data on 290 observations of
#' offspring case numbers generated by individual seed cases during the COVID-19 outbreak
#' in Hong Kong, China, from January to April 2020. It includes the number of offspring
#' cases per seed and the type of transmission event.
#'
#' The dataset name has been kept as 'COVID19_HongKong_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name COVID19_HongKong_df
#' @format A data frame with 290 observations and 2 variables:
#' \describe{
#'   \item{obs}{Number of offspring cases from a single seed case (numeric)}
#'   \item{type}{Type of transmission event (character)}
#' }
#' @source Data taken from the modelSSE package version 0.1-3
#' @usage data(COVID19_HongKong_df)
#' @export
load("data/COVID19_HongKong_df.rda")
NULL


#' Daily Incidence of the 2003 SARS Epidemic in Hong Kong
#'
#' This dataset, sars_hong_kong_list, is a list containing two components: the daily number of reported
#' SARS cases and the serial interval distribution during the 2003 SARS epidemic in Hong Kong.
#' The incidence data covers 107 days, and the serial interval distribution is provided for 25 days.
#'
#' The dataset name has been kept as 'sars_hong_kong_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is a list object. The original content has not been modified
#' in any way.
#'
#' @name sars_hong_kong_list
#' @format A list with 2 components:
#' \describe{
#'   \item{incidence}{Daily number of SARS cases reported in Hong Kong (numeric vector of length 107)}
#'   \item{si}{Serial interval distribution (numeric vector of length 25)}
#' }
#' @source Data taken from the EpiLPS package version 1.3.0
#' @usage data(sars_hong_kong_list)
#' @export
load("data/sars_hong_kong_list.rda")
NULL


#' Hong Kong Street Names as of 2020
#'
#' This dataset, hk_street_names_tbl_df, is a tibble containing street names in Hong Kong as of the year 2020.
#' It includes English and Chinese names for each street and logical indicators of whether a street is located
#' within one of the 18 administrative districts of Hong Kong. This dataset is useful for geographic,
#' linguistic, and administrative analysis.
#'
#' The dataset name has been kept as 'hk_street_names_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name hk_street_names_tbl_df
#' @format A tibble with 4,603 observations and 21 variables:
#' \describe{
#'   \item{DC}{District code or abbreviation (character)}
#'   \item{StreetNames_EN}{Street name in English (character)}
#'   \item{StreetNames_ZH}{Street name in Chinese (character)}
#'   \item{TM}{Tuen Mun district indicator (logical)}
#'   \item{ST}{Sha Tin district indicator (logical)}
#'   \item{E}{Eastern district indicator (logical)}
#'   \item{S}{Southern district indicator (logical)}
#'   \item{WC}{Wan Chai district indicator (logical)}
#'   \item{C&W}{Central and Western district indicator (logical)}
#'   \item{Is}{Islands district indicator (logical)}
#'   \item{YL}{Yuen Long district indicator (logical)}
#'   \item{SK}{Sai Kung district indicator (logical)}
#'   \item{KC}{Kowloon City district indicator (logical)}
#'   \item{YTM}{Yau Tsim Mong district indicator (logical)}
#'   \item{KT}{Kwun Tong district indicator (logical)}
#'   \item{SSP}{Sham Shui Po district indicator (logical)}
#'   \item{N}{North district indicator (logical)}
#'   \item{TP}{Tai Po district indicator (logical)}
#'   \item{K&T}{Kwai Tsing district indicator (logical)}
#'   \item{TW}{Tsuen Wan district indicator (logical)}
#'   \item{WTS}{Wong Tai Sin district indicator (logical)}
#' }
#' @source Data taken from the hkdatasets package version 1.0.0
#' @usage data(hk_street_names_tbl_df)
#' @export
load("data/hk_street_names_tbl_df.rda")
NULL


#' Hong Kong District Labels and Regional Classification
#'
#' This dataset, hk_districts_tbl_df, is a tibble summarizing the region classification and
#' abbreviated labels of the 18 administrative districts in Hong Kong. It provides English and Chinese
#' names for each district, along with their corresponding region and abbreviation. This dataset is useful
#' for geographic mapping and administrative categorization.
#'
#' The dataset name has been kept as 'hk_districts_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name hk_districts_tbl_df
#' @format A tibble with 18 observations and 6 variables:
#' \describe{
#'   \item{Code}{District code (character)}
#'   \item{District_EN}{District name in English (character)}
#'   \item{District_ZH}{District name in Chinese (character)}
#'   \item{Region_EN}{Region classification in English (character)}
#'   \item{Region_ZH}{Region classification in Chinese (character)}
#'   \item{Abbrev}{Abbreviation of the district (character)}
#' }
#' @source Data taken from the hkdatasets package version 1.0.0
#' @usage data(hk_districts_tbl_df)
#' @export
load("data/hk_districts_tbl_df.rda")
NULL


#' Hong Kong District Councillors Elected in 2019
#'
#' This dataset, hk_councillors_tbl_df, is a tibble containing public domain information about the
#' 452 District Councillors elected in Hong Kong during the 2019 election. It includes demographic,
#' political, and contact information, along with details on electoral performance and constituency classification.
#'
#' The dataset name has been kept as 'hk_councillors_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name hk_councillors_tbl_df
#' @format A tibble with 452 observations and 33 variables:
#' \describe{
#'   \item{ConstituencyCode}{Constituency code (character)}
#'   \item{Constituency_ZH}{Constituency name in Chinese (character)}
#'   \item{Constituency_EN}{Constituency name in English (character)}
#'   \item{District_ZH}{District name in Chinese (character)}
#'   \item{District_EN}{District name in English (character)}
#'   \item{Region_ZH}{Region name in Chinese (character)}
#'   \item{Region_EN}{Region name in English (character)}
#'   \item{Party_ZH}{Political party name in Chinese (character)}
#'   \item{Party_EN}{Political party name in English (character)}
#'   \item{DC_ZH}{Name of councillor in Chinese (character)}
#'   \item{DC_EN}{Name of councillor in English (character)}
#'   \item{FacebookURL}{Link to councillor's Facebook page (character)}
#'   \item{DCPageURL}{Link to official councillor page (character)}
#'   \item{Address}{Office address (character)}
#'   \item{Phone}{Phone number (character)}
#'   \item{Fax}{Fax number (character)}
#'   \item{Email}{Email address (character)}
#'   \item{WebsiteURL}{Personal or campaign website URL (character)}
#'   \item{DCProjectPageURL}{Project page URL (character)}
#'   \item{ElectionYear}{Year of election (numeric)}
#'   \item{ElectionDate}{Date of election (Date)}
#'   \item{CandidateNum}{Number of candidates in the race (numeric)}
#'   \item{Occupation}{Occupation of councillor (character)}
#'   \item{Political_ZH}{Political position or orientation in Chinese (character)}
#'   \item{Political_EN}{Political position or orientation in English (character)}
#'   \item{Camp_ZH}{Political camp in Chinese (character)}
#'   \item{Camp_EN}{Political camp in English (character)}
#'   \item{Vote}{Number of votes received (numeric)}
#'   \item{VotePercentage}{Vote percentage received (numeric)}
#'   \item{Gender_ZH}{Gender in Chinese (character)}
#'   \item{Gender_EN}{Gender in English (character)}
#'   \item{Tag_ZH}{Additional tags or classifications in Chinese (character)}
#'   \item{Tag_EN}{Additional tags or classifications in English (character)}
#' }
#' @source Data taken from the hkdatasets package version 1.0.0
#' @usage data(hk_councillors_tbl_df)
#' @export
load("data/hk_councillors_tbl_df.rda")
NULL


#' Hong Kong Population by District and Age Group
#'
#' This dataset, hk_population_tbl_df, is a tibble containing the land-based non-institutional
#' population of Hong Kong, broken down by District Council district and age group.
#' It provides population counts for five age brackets and the total population for each of the 18 districts.
#'
#' The dataset name has been kept as 'hk_population_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name hk_population_tbl_df
#' @format A tibble with 18 observations and 8 variables:
#' \describe{
#'   \item{District_ZH}{District name in Chinese (character)}
#'   \item{District_EN}{District name in English (character)}
#'   \item{Age_0_14}{Population aged 0 to 14 (numeric)}
#'   \item{Age_15_24}{Population aged 15 to 24 (numeric)}
#'   \item{Age_25_44}{Population aged 25 to 44 (numeric)}
#'   \item{Age_45_64}{Population aged 45 to 64 (numeric)}
#'   \item{Age_65}{Population aged 65 and over (numeric)}
#'   \item{TotalPopulation}{Total population of the district (numeric)}
#' }
#' @source Data taken from the hkdatasets package version 1.0.0
#' @usage data(hk_population_tbl_df)
#' @export
load("data/hk_population_tbl_df.rda")
NULL


#' Chinese Health and Family Life Survey
#'
#' This dataset, health_family_life_df, is a data frame from the Chinese Health and Family Life Survey,
#' which sampled 60 villages and urban neighborhoods to represent the full geographical and socioeconomic
#' range of contemporary China. The dataset includes 1,534 observations and covers variables related to
#' age, education, income, health, and well-being, both for respondents and their partners.
#'
#' The dataset name has been kept as 'health_family_life_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name health_family_life_df
#' @format A data frame with 1,534 observations and 10 variables:
#' \describe{
#'   \item{R_region}{Region of respondent (factor with 6 levels)}
#'   \item{R_age}{Age of respondent (numeric)}
#'   \item{R_edu}{Education level of respondent (ordered factor with 6 levels)}
#'   \item{R_income}{Income of respondent (numeric)}
#'   \item{R_health}{Self-reported health status of respondent (ordered factor with 5 levels)}
#'   \item{R_height}{Height of respondent (numeric)}
#'   \item{R_happy}{Self-reported happiness level of respondent (ordered factor with 4 levels)}
#'   \item{A_height}{Height of respondent’s partner (numeric)}
#'   \item{A_edu}{Education level of respondent’s partner (ordered factor with 6 levels)}
#'   \item{A_income}{Income of respondent’s partner (numeric)}
#' }
#' @source Data taken from the HSAUR3 package version 1.0-15
#' @usage data(health_family_life_df)
#' @export
load("data/health_family_life_df.rda")
NULL


#' Stated Car Choice Data from Chinese Buyers
#'
#' This dataset, china_cars_tbl_df, is a tibble containing stated choice observations from a conjoint
#' survey conducted by Helveston et al. (2015). The survey includes 448 choice observations from Chinese car buyers
#' and 384 from U.S. car buyers. The surveys were administered in 2012 across four major Chinese cities
#' (Beijing, Shanghai, Shenzhen, and Chengdu), online in the U.S. via Amazon Mechanical Turk,
#' and in person at the Pittsburgh Auto Show. Participants were asked to choose a vehicle from
#' a set of three alternatives in 15 choice tasks.
#'
#' The dataset name has been kept as 'china_cars_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name china_cars_tbl_df
#' @format A tibble with 20,160 observations and 20 variables:
#' \describe{
#'   \item{id}{Participant ID (numeric)}
#'   \item{obsnum}{Observation number (numeric)}
#'   \item{choice}{Indicates if the option was chosen (1 = yes, 0 = no) (numeric)}
#'   \item{hev}{Hybrid electric vehicle dummy variable (numeric)}
#'   \item{phev10}{Plug-in hybrid vehicle with 10-mile range dummy (numeric)}
#'   \item{phev20}{Plug-in hybrid vehicle with 20-mile range dummy (numeric)}
#'   \item{phev40}{Plug-in hybrid vehicle with 40-mile range dummy (numeric)}
#'   \item{bev75}{Battery electric vehicle with 75-mile range dummy (numeric)}
#'   \item{bev100}{Battery electric vehicle with 100-mile range dummy (numeric)}
#'   \item{bev150}{Battery electric vehicle with 150-mile range dummy (numeric)}
#'   \item{phevFastcharge}{Fast charging availability for PHEV (numeric)}
#'   \item{bevFastcharge}{Fast charging availability for BEV (numeric)}
#'   \item{price}{Price of the vehicle (numeric)}
#'   \item{opCost}{Operating cost (numeric)}
#'   \item{accelTime}{Acceleration time (numeric)}
#'   \item{american}{American brand dummy variable (numeric)}
#'   \item{japanese}{Japanese brand dummy variable (numeric)}
#'   \item{chinese}{Chinese brand dummy variable (numeric)}
#'   \item{skorean}{South Korean brand dummy variable (numeric)}
#'   \item{weights}{Survey weights (numeric)}
#' }
#' @source Data taken from the logitr package version 1.1.2
#' @usage data(china_cars_tbl_df)
#' @export
load("data/china_cars_tbl_df.rda")
NULL


#' Beijing Air Quality Dataset (2015)
#'
#' This dataset, bj_air_quality_tbl_df, is a tibble containing hourly air pollutant and weather measurements
#' from the Dongsi air quality monitoring site in Beijing, China. The data covers 320 complete days of the year 2015
#' and includes variables such as nitrogen dioxide (NO₂), ozone (O₃), temperature, and wind speed.
#'
#' The dataset name has been kept as 'bj_air_quality_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble (a modern form of data frame). The original content has not been modified
#' in any way.
#'
#' @name bj_air_quality_tbl_df
#' @format A tibble with 7,680 observations and 6 variables:
#' \describe{
#'   \item{DATE}{Date of observation (Date)}
#'   \item{HOUR}{Hour of the day (integer, from 0 to 23)}
#'   \item{NO2}{Nitrogen dioxide concentration (numeric)}
#'   \item{O3}{Ozone concentration (numeric)}
#'   \item{TEMP}{Temperature in degrees Celsius (numeric)}
#'   \item{WIND}{Wind speed in meters per second (numeric)}
#' }
#' @source Data taken from the gmgm package version 1.1.2
#' @usage data(bj_air_quality_tbl_df)
#' @export
load("data/bj_air_quality_tbl_df.rda")
NULL


#' PM2.5 Pollution and Weather Data in Shanghai
#'
#' This dataset, shanghai_pm25_df, is a data frame containing information about PM2.5 air pollution and weather
#' conditions in Shanghai. The data originates from a broader study on fine particle pollution in five Chinese cities.
#' For this dataset, lines containing missing values were removed, and the first 5,000 complete observations were selected.
#' Only pollution-related and weather-related variables were retained.
#'
#' The dataset name has been kept as 'shanghai_pm25_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name shanghai_pm25_df
#' @format A data frame with 5,000 observations and 10 variables:
#' \describe{
#'   \item{PM_Jingan}{PM2.5 concentration at Jingan station (integer)}
#'   \item{PM_US.Post}{PM2.5 concentration at the U.S. Consulate station (integer)}
#'   \item{PM_Xuhui}{PM2.5 concentration at Xuhui station (integer)}
#'   \item{DEWP}{Dew point temperature (integer)}
#'   \item{HUMI}{Relative humidity (numeric)}
#'   \item{PRES}{Barometric pressure (numeric)}
#'   \item{TEMP}{Temperature in degrees Celsius (integer)}
#'   \item{Iws}{Wind speed (numeric)}
#'   \item{precipitation}{Precipitation amount (numeric)}
#'   \item{Iprec}{Cumulative precipitation index (numeric)}
#' }
#' @source Data taken from the slm package version 1.2.0
#' @usage data(shanghai_pm25_df)
#' @export
load("data/shanghai_pm25_df.rda")
NULL


#' Per Capita Output of Workers in Shanghai Factories
#'
#' This dataset, shanghai_factories_df, is a data frame containing data on per capita output of workers
#' in 17 factories located in Shanghai. It includes measures of output along with three associated input variables,
#' providing a concise snapshot of factory-level productivity indicators.
#'
#' The dataset name has been kept as 'shanghai_factories_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name shanghai_factories_df
#' @format A data frame with 17 observations and 4 variables:
#' \describe{
#'   \item{Output}{Per capita output of workers (numeric)}
#'   \item{SI}{Input variable SI (numeric)}
#'   \item{SP}{Input variable SP (numeric)}
#'   \item{I}{Input variable I (numeric)}
#' }
#' @source Data taken from the SenSrivastava package version 2015.6.25.1
#' @usage data(shanghai_factories_df)
#' @export
load("data/shanghai_factories_df.rda")
NULL


#' China Input-Output Table (2020, 42 Sectors)
#'
#' This dataset, china_io_2020_42_df, is a data frame containing the national input-output table
#' of China for the year 2020. It includes 91 observations across 42 economic sectors. The values are
#' expressed in units of 10,000 Chinese Yuan (CNY). The dataset records transactions between sectors,
#' value added components, imports, exports, and other final demand categories.
#'
#' The dataset name has been kept as 'china_io_2020_42_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2020_42_df
#' @format A data frame with 91 observations and 53 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{Origin}{Type of entry (e.g., sector, total, final use) (character)}
#'   \item{01}{Intermediate demand from sector 01 (numeric)}
#'   \item{02}{Intermediate demand from sector 02 (numeric)}
#'   \item{03}{Intermediate demand from sector 03 (numeric)}
#'   \item{04}{Intermediate demand from sector 04 (numeric)}
#'   \item{05}{Intermediate demand from sector 05 (numeric)}
#'   \item{06}{Intermediate demand from sector 06 (numeric)}
#'   \item{07}{Intermediate demand from sector 07 (numeric)}
#'   \item{08}{Intermediate demand from sector 08 (numeric)}
#'   \item{09}{Intermediate demand from sector 09 (numeric)}
#'   \item{10}{Intermediate demand from sector 10 (numeric)}
#'   \item{11}{Intermediate demand from sector 11 (numeric)}
#'   \item{12}{Intermediate demand from sector 12 (numeric)}
#'   \item{13}{Intermediate demand from sector 13 (numeric)}
#'   \item{14}{Intermediate demand from sector 14 (numeric)}
#'   \item{15}{Intermediate demand from sector 15 (numeric)}
#'   \item{16}{Intermediate demand from sector 16 (numeric)}
#'   \item{17}{Intermediate demand from sector 17 (numeric)}
#'   \item{18}{Intermediate demand from sector 18 (numeric)}
#'   \item{19}{Intermediate demand from sector 19 (numeric)}
#'   \item{20}{Intermediate demand from sector 20 (numeric)}
#'   \item{21}{Intermediate demand from sector 21 (numeric)}
#'   \item{22}{Intermediate demand from sector 22 (numeric)}
#'   \item{23}{Intermediate demand from sector 23 (numeric)}
#'   \item{24}{Intermediate demand from sector 24 (numeric)}
#'   \item{25}{Intermediate demand from sector 25 (numeric)}
#'   \item{26}{Intermediate demand from sector 26 (numeric)}
#'   \item{27}{Intermediate demand from sector 27 (numeric)}
#'   \item{28}{Intermediate demand from sector 28 (numeric)}
#'   \item{29}{Intermediate demand from sector 29 (numeric)}
#'   \item{30}{Intermediate demand from sector 30 (numeric)}
#'   \item{31}{Intermediate demand from sector 31 (numeric)}
#'   \item{32}{Intermediate demand from sector 32 (numeric)}
#'   \item{33}{Intermediate demand from sector 33 (numeric)}
#'   \item{34}{Intermediate demand from sector 34 (numeric)}
#'   \item{35}{Intermediate demand from sector 35 (numeric)}
#'   \item{36}{Intermediate demand from sector 36 (numeric)}
#'   \item{37}{Intermediate demand from sector 37 (numeric)}
#'   \item{38}{Intermediate demand from sector 38 (numeric)}
#'   \item{39}{Intermediate demand from sector 39 (numeric)}
#'   \item{40}{Intermediate demand from sector 40 (numeric)}
#'   \item{41}{Intermediate demand from sector 41 (numeric)}
#'   \item{42}{Intermediate demand from sector 42 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use 201: government consumption (numeric)}
#'   \item{FU202}{Final use 202: household consumption (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2020_42_df)
#' @export
load("data/china_io_2020_42_df.rda")
NULL


#' Input-output Table for China, 2020 (153 Sectors)
#'
#' This dataset, china_io_2020_153_df, is a data frame that represents the national input-output table of China for the year 2020.
#' It covers 153 sectors and provides inter-sectoral flows of goods and services. Data values are measured in 10,000 Chinese Yuan (CNY)
#' and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2020_153_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2020_153_df
#' @format A data frame with 160 observations and 169 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Input from sector 001 (numeric)}
#'   \item{002}{Input from sector 002 (numeric)}
#'   \item{003}{Input from sector 003 (numeric)}
#'   \item{004}{Input from sector 004 (numeric)}
#'   \item{005}{Input from sector 005 (numeric)}
#'   \item{006}{Input from sector 006 (numeric)}
#'   \item{007}{Input from sector 007 (numeric)}
#'   \item{008}{Input from sector 008 (numeric)}
#'   \item{009}{Input from sector 009 (numeric)}
#'   \item{010}{Input from sector 010 (numeric)}
#'   \item{011}{Input from sector 011 (numeric)}
#'   \item{012}{Input from sector 012 (numeric)}
#'   \item{013}{Input from sector 013 (numeric)}
#'   \item{014}{Input from sector 014 (numeric)}
#'   \item{015}{Input from sector 015 (numeric)}
#'   \item{016}{Input from sector 016 (numeric)}
#'   \item{017}{Input from sector 017 (numeric)}
#'   \item{018}{Input from sector 018 (numeric)}
#'   \item{019}{Input from sector 019 (numeric)}
#'   \item{020}{Input from sector 020 (numeric)}
#'   \item{021}{Input from sector 021 (numeric)}
#'   \item{022}{Input from sector 022 (numeric)}
#'   \item{023}{Input from sector 023 (numeric)}
#'   \item{024}{Input from sector 024 (numeric)}
#'   \item{025}{Input from sector 025 (numeric)}
#'   \item{026}{Input from sector 026 (numeric)}
#'   \item{027}{Input from sector 027 (numeric)}
#'   \item{028}{Input from sector 028 (numeric)}
#'   \item{029}{Input from sector 029 (numeric)}
#'   \item{030}{Input from sector 030 (numeric)}
#'   \item{031}{Input from sector 031 (numeric)}
#'   \item{032}{Input from sector 032 (numeric)}
#'   \item{033}{Input from sector 033 (numeric)}
#'   \item{034}{Input from sector 034 (numeric)}
#'   \item{035}{Input from sector 035 (numeric)}
#'   \item{036}{Input from sector 036 (numeric)}
#'   \item{037}{Input from sector 037 (numeric)}
#'   \item{038}{Input from sector 038 (numeric)}
#'   \item{039}{Input from sector 039 (numeric)}
#'   \item{040}{Input from sector 040 (numeric)}
#'   \item{041}{Input from sector 041 (numeric)}
#'   \item{042}{Input from sector 042 (numeric)}
#'   \item{043}{Input from sector 043 (numeric)}
#'   \item{044}{Input from sector 044 (numeric)}
#'   \item{045}{Input from sector 045 (numeric)}
#'   \item{046}{Input from sector 046 (numeric)}
#'   \item{047}{Input from sector 047 (numeric)}
#'   \item{048}{Input from sector 048 (numeric)}
#'   \item{049}{Input from sector 049 (numeric)}
#'   \item{050}{Input from sector 050 (numeric)}
#'   \item{051}{Input from sector 051 (numeric)}
#'   \item{052}{Input from sector 052 (numeric)}
#'   \item{053}{Input from sector 053 (numeric)}
#'   \item{054}{Input from sector 054 (numeric)}
#'   \item{055}{Input from sector 055 (numeric)}
#'   \item{056}{Input from sector 056 (numeric)}
#'   \item{057}{Input from sector 057 (numeric)}
#'   \item{058}{Input from sector 058 (numeric)}
#'   \item{059}{Input from sector 059 (numeric)}
#'   \item{060}{Input from sector 060 (numeric)}
#'   \item{061}{Input from sector 061 (numeric)}
#'   \item{062}{Input from sector 062 (numeric)}
#'   \item{063}{Input from sector 063 (numeric)}
#'   \item{064}{Input from sector 064 (numeric)}
#'   \item{065}{Input from sector 065 (numeric)}
#'   \item{066}{Input from sector 066 (numeric)}
#'   \item{067}{Input from sector 067 (numeric)}
#'   \item{068}{Input from sector 068 (numeric)}
#'   \item{069}{Input from sector 069 (numeric)}
#'   \item{070}{Input from sector 070 (numeric)}
#'   \item{071}{Input from sector 071 (numeric)}
#'   \item{072}{Input from sector 072 (numeric)}
#'   \item{073}{Input from sector 073 (numeric)}
#'   \item{074}{Input from sector 074 (numeric)}
#'   \item{075}{Input from sector 075 (numeric)}
#'   \item{076}{Input from sector 076 (numeric)}
#'   \item{077}{Input from sector 077 (numeric)}
#'   \item{078}{Input from sector 078 (numeric)}
#'   \item{079}{Input from sector 079 (numeric)}
#'   \item{080}{Input from sector 080 (numeric)}
#'   \item{081}{Input from sector 081 (numeric)}
#'   \item{082}{Input from sector 082 (numeric)}
#'   \item{083}{Input from sector 083 (numeric)}
#'   \item{084}{Input from sector 084 (numeric)}
#'   \item{085}{Input from sector 085 (numeric)}
#'   \item{086}{Input from sector 086 (numeric)}
#'   \item{087}{Input from sector 087 (numeric)}
#'   \item{088}{Input from sector 088 (numeric)}
#'   \item{089}{Input from sector 089 (numeric)}
#'   \item{090}{Input from sector 090 (numeric)}
#'   \item{091}{Input from sector 091 (numeric)}
#'   \item{092}{Input from sector 092 (numeric)}
#'   \item{093}{Input from sector 093 (numeric)}
#'   \item{094}{Input from sector 094 (numeric)}
#'   \item{095}{Input from sector 095 (numeric)}
#'   \item{096}{Input from sector 096 (numeric)}
#'   \item{097}{Input from sector 097 (numeric)}
#'   \item{098}{Input from sector 098 (numeric)}
#'   \item{099}{Input from sector 099 (numeric)}
#'   \item{100}{Input from sector 100 (numeric)}
#'   \item{101}{Input from sector 101 (numeric)}
#'   \item{102}{Input from sector 102 (numeric)}
#'   \item{103}{Input from sector 103 (numeric)}
#'   \item{104}{Input from sector 104 (numeric)}
#'   \item{105}{Input from sector 105 (numeric)}
#'   \item{106}{Input from sector 106 (numeric)}
#'   \item{107}{Input from sector 107 (numeric)}
#'   \item{108}{Input from sector 108 (numeric)}
#'   \item{109}{Input from sector 109 (numeric)}
#'   \item{110}{Input from sector 110 (numeric)}
#'   \item{111}{Input from sector 111 (numeric)}
#'   \item{112}{Input from sector 112 (numeric)}
#'   \item{113}{Input from sector 113 (numeric)}
#'   \item{114}{Input from sector 114 (numeric)}
#'   \item{115}{Input from sector 115 (numeric)}
#'   \item{116}{Input from sector 116 (numeric)}
#'   \item{117}{Input from sector 117 (numeric)}
#'   \item{118}{Input from sector 118 (numeric)}
#'   \item{119}{Input from sector 119 (numeric)}
#'   \item{120}{Input from sector 120 (numeric)}
#'   \item{121}{Input from sector 121 (numeric)}
#'   \item{122}{Input from sector 122 (numeric)}
#'   \item{123}{Input from sector 123 (numeric)}
#'   \item{124}{Input from sector 124 (numeric)}
#'   \item{125}{Input from sector 125 (numeric)}
#'   \item{126}{Input from sector 126 (numeric)}
#'   \item{127}{Input from sector 127 (numeric)}
#'   \item{128}{Input from sector 128 (numeric)}
#'   \item{129}{Input from sector 129 (numeric)}
#'   \item{130}{Input from sector 130 (numeric)}
#'   \item{131}{Input from sector 131 (numeric)}
#'   \item{132}{Input from sector 132 (numeric)}
#'   \item{133}{Input from sector 133 (numeric)}
#'   \item{134}{Input from sector 134 (numeric)}
#'   \item{135}{Input from sector 135 (numeric)}
#'   \item{136}{Input from sector 136 (numeric)}
#'   \item{137}{Input from sector 137 (numeric)}
#'   \item{138}{Input from sector 138 (numeric)}
#'   \item{139}{Input from sector 139 (numeric)}
#'   \item{140}{Input from sector 140 (numeric)}
#'   \item{141}{Input from sector 141 (numeric)}
#'   \item{142}{Input from sector 142 (numeric)}
#'   \item{143}{Input from sector 143 (numeric)}
#'   \item{144}{Input from sector 144 (numeric)}
#'   \item{145}{Input from sector 145 (numeric)}
#'   \item{146}{Input from sector 146 (numeric)}
#'   \item{147}{Input from sector 147 (numeric)}
#'   \item{148}{Input from sector 148 (numeric)}
#'   \item{149}{Input from sector 149 (numeric)}
#'   \item{150}{Input from sector 150 (numeric)}
#'   \item{151}{Input from sector 151 (numeric)}
#'   \item{152}{Input from sector 152 (numeric)}
#'   \item{153}{Input from sector 153 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2020_153_df)
#' @export
load("data/china_io_2020_153_df.rda")
NULL


#' China Input-Output Table (2018, 42 Sectors)
#'
#' This dataset, china_io_2018_42_df, is a data frame containing the national input-output table
#' of China for the year 2018. It includes 91 observations across 42 economic sectors. The values are
#' expressed in units of 10,000 Chinese Yuan (CNY). The dataset records transactions between sectors,
#' value added components, imports, exports, and other final demand categories.
#'
#' The dataset name has been kept as 'china_io_2018_42_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2018_42_df
#' @format A data frame with 91 observations and 53 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{Origin}{Type of entry (e.g., sector, total, final use) (character)}
#'   \item{01}{Intermediate demand from sector 01 (numeric)}
#'   \item{02}{Intermediate demand from sector 02 (numeric)}
#'   \item{03}{Intermediate demand from sector 03 (numeric)}
#'   \item{04}{Intermediate demand from sector 04 (numeric)}
#'   \item{05}{Intermediate demand from sector 05 (numeric)}
#'   \item{06}{Intermediate demand from sector 06 (numeric)}
#'   \item{07}{Intermediate demand from sector 07 (numeric)}
#'   \item{08}{Intermediate demand from sector 08 (numeric)}
#'   \item{09}{Intermediate demand from sector 09 (numeric)}
#'   \item{10}{Intermediate demand from sector 10 (numeric)}
#'   \item{11}{Intermediate demand from sector 11 (numeric)}
#'   \item{12}{Intermediate demand from sector 12 (numeric)}
#'   \item{13}{Intermediate demand from sector 13 (numeric)}
#'   \item{14}{Intermediate demand from sector 14 (numeric)}
#'   \item{15}{Intermediate demand from sector 15 (numeric)}
#'   \item{16}{Intermediate demand from sector 16 (numeric)}
#'   \item{17}{Intermediate demand from sector 17 (numeric)}
#'   \item{18}{Intermediate demand from sector 18 (numeric)}
#'   \item{19}{Intermediate demand from sector 19 (numeric)}
#'   \item{20}{Intermediate demand from sector 20 (numeric)}
#'   \item{21}{Intermediate demand from sector 21 (numeric)}
#'   \item{22}{Intermediate demand from sector 22 (numeric)}
#'   \item{23}{Intermediate demand from sector 23 (numeric)}
#'   \item{24}{Intermediate demand from sector 24 (numeric)}
#'   \item{25}{Intermediate demand from sector 25 (numeric)}
#'   \item{26}{Intermediate demand from sector 26 (numeric)}
#'   \item{27}{Intermediate demand from sector 27 (numeric)}
#'   \item{28}{Intermediate demand from sector 28 (numeric)}
#'   \item{29}{Intermediate demand from sector 29 (numeric)}
#'   \item{30}{Intermediate demand from sector 30 (numeric)}
#'   \item{31}{Intermediate demand from sector 31 (numeric)}
#'   \item{32}{Intermediate demand from sector 32 (numeric)}
#'   \item{33}{Intermediate demand from sector 33 (numeric)}
#'   \item{34}{Intermediate demand from sector 34 (numeric)}
#'   \item{35}{Intermediate demand from sector 35 (numeric)}
#'   \item{36}{Intermediate demand from sector 36 (numeric)}
#'   \item{37}{Intermediate demand from sector 37 (numeric)}
#'   \item{38}{Intermediate demand from sector 38 (numeric)}
#'   \item{39}{Intermediate demand from sector 39 (numeric)}
#'   \item{40}{Intermediate demand from sector 40 (numeric)}
#'   \item{41}{Intermediate demand from sector 41 (numeric)}
#'   \item{42}{Intermediate demand from sector 42 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use 201: government consumption (numeric)}
#'   \item{FU202}{Final use 202: household consumption (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2018_42_df)
#' @export
load("data/china_io_2018_42_df.rda")
NULL


#' China Input-Output Table (2018, 153 Sectors)
#'
#' This dataset, `china_io_2018_153_df`, is a data frame that represents the national input-output table of China for the year 2018.
#' It covers 153 sectors and provides inter-sectoral flows of goods and services. Data values are measured in 10,000 Chinese Yuan (CNY)
#' and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2018_153_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2018_153_df
#' @format A data frame with 160 observations and 169 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Input from sector 001 (numeric)}
#'   \item{002}{Input from sector 002 (numeric)}
#'   \item{003}{Input from sector 003 (numeric)}
#'   \item{004}{Input from sector 004 (numeric)}
#'   \item{005}{Input from sector 005 (numeric)}
#'   \item{006}{Input from sector 006 (numeric)}
#'   \item{007}{Input from sector 007 (numeric)}
#'   \item{008}{Input from sector 008 (numeric)}
#'   \item{009}{Input from sector 009 (numeric)}
#'   \item{010}{Input from sector 010 (numeric)}
#'   \item{011}{Input from sector 011 (numeric)}
#'   \item{012}{Input from sector 012 (numeric)}
#'   \item{013}{Input from sector 013 (numeric)}
#'   \item{014}{Input from sector 014 (numeric)}
#'   \item{015}{Input from sector 015 (numeric)}
#'   \item{016}{Input from sector 016 (numeric)}
#'   \item{017}{Input from sector 017 (numeric)}
#'   \item{018}{Input from sector 018 (numeric)}
#'   \item{019}{Input from sector 019 (numeric)}
#'   \item{020}{Input from sector 020 (numeric)}
#'   \item{021}{Input from sector 021 (numeric)}
#'   \item{022}{Input from sector 022 (numeric)}
#'   \item{023}{Input from sector 023 (numeric)}
#'   \item{024}{Input from sector 024 (numeric)}
#'   \item{025}{Input from sector 025 (numeric)}
#'   \item{026}{Input from sector 026 (numeric)}
#'   \item{027}{Input from sector 027 (numeric)}
#'   \item{028}{Input from sector 028 (numeric)}
#'   \item{029}{Input from sector 029 (numeric)}
#'   \item{030}{Input from sector 030 (numeric)}
#'   \item{031}{Input from sector 031 (numeric)}
#'   \item{032}{Input from sector 032 (numeric)}
#'   \item{033}{Input from sector 033 (numeric)}
#'   \item{034}{Input from sector 034 (numeric)}
#'   \item{035}{Input from sector 035 (numeric)}
#'   \item{036}{Input from sector 036 (numeric)}
#'   \item{037}{Input from sector 037 (numeric)}
#'   \item{038}{Input from sector 038 (numeric)}
#'   \item{039}{Input from sector 039 (numeric)}
#'   \item{040}{Input from sector 040 (numeric)}
#'   \item{041}{Input from sector 041 (numeric)}
#'   \item{042}{Input from sector 042 (numeric)}
#'   \item{043}{Input from sector 043 (numeric)}
#'   \item{044}{Input from sector 044 (numeric)}
#'   \item{045}{Input from sector 045 (numeric)}
#'   \item{046}{Input from sector 046 (numeric)}
#'   \item{047}{Input from sector 047 (numeric)}
#'   \item{048}{Input from sector 048 (numeric)}
#'   \item{049}{Input from sector 049 (numeric)}
#'   \item{050}{Input from sector 050 (numeric)}
#'   \item{051}{Input from sector 051 (numeric)}
#'   \item{052}{Input from sector 052 (numeric)}
#'   \item{053}{Input from sector 053 (numeric)}
#'   \item{054}{Input from sector 054 (numeric)}
#'   \item{055}{Input from sector 055 (numeric)}
#'   \item{056}{Input from sector 056 (numeric)}
#'   \item{057}{Input from sector 057 (numeric)}
#'   \item{058}{Input from sector 058 (numeric)}
#'   \item{059}{Input from sector 059 (numeric)}
#'   \item{060}{Input from sector 060 (numeric)}
#'   \item{061}{Input from sector 061 (numeric)}
#'   \item{062}{Input from sector 062 (numeric)}
#'   \item{063}{Input from sector 063 (numeric)}
#'   \item{064}{Input from sector 064 (numeric)}
#'   \item{065}{Input from sector 065 (numeric)}
#'   \item{066}{Input from sector 066 (numeric)}
#'   \item{067}{Input from sector 067 (numeric)}
#'   \item{068}{Input from sector 068 (numeric)}
#'   \item{069}{Input from sector 069 (numeric)}
#'   \item{070}{Input from sector 070 (numeric)}
#'   \item{071}{Input from sector 071 (numeric)}
#'   \item{072}{Input from sector 072 (numeric)}
#'   \item{073}{Input from sector 073 (numeric)}
#'   \item{074}{Input from sector 074 (numeric)}
#'   \item{075}{Input from sector 075 (numeric)}
#'   \item{076}{Input from sector 076 (numeric)}
#'   \item{077}{Input from sector 077 (numeric)}
#'   \item{078}{Input from sector 078 (numeric)}
#'   \item{079}{Input from sector 079 (numeric)}
#'   \item{080}{Input from sector 080 (numeric)}
#'   \item{081}{Input from sector 081 (numeric)}
#'   \item{082}{Input from sector 082 (numeric)}
#'   \item{083}{Input from sector 083 (numeric)}
#'   \item{084}{Input from sector 084 (numeric)}
#'   \item{085}{Input from sector 085 (numeric)}
#'   \item{086}{Input from sector 086 (numeric)}
#'   \item{087}{Input from sector 087 (numeric)}
#'   \item{088}{Input from sector 088 (numeric)}
#'   \item{089}{Input from sector 089 (numeric)}
#'   \item{090}{Input from sector 090 (numeric)}
#'   \item{091}{Input from sector 091 (numeric)}
#'   \item{092}{Input from sector 092 (numeric)}
#'   \item{093}{Input from sector 093 (numeric)}
#'   \item{094}{Input from sector 094 (numeric)}
#'   \item{095}{Input from sector 095 (numeric)}
#'   \item{096}{Input from sector 096 (numeric)}
#'   \item{097}{Input from sector 097 (numeric)}
#'   \item{098}{Input from sector 098 (numeric)}
#'   \item{099}{Input from sector 099 (numeric)}
#'   \item{100}{Input from sector 100 (numeric)}
#'   \item{101}{Input from sector 101 (numeric)}
#'   \item{102}{Input from sector 102 (numeric)}
#'   \item{103}{Input from sector 103 (numeric)}
#'   \item{104}{Input from sector 104 (numeric)}
#'   \item{105}{Input from sector 105 (numeric)}
#'   \item{106}{Input from sector 106 (numeric)}
#'   \item{107}{Input from sector 107 (numeric)}
#'   \item{108}{Input from sector 108 (numeric)}
#'   \item{109}{Input from sector 109 (numeric)}
#'   \item{110}{Input from sector 110 (numeric)}
#'   \item{111}{Input from sector 111 (numeric)}
#'   \item{112}{Input from sector 112 (numeric)}
#'   \item{113}{Input from sector 113 (numeric)}
#'   \item{114}{Input from sector 114 (numeric)}
#'   \item{115}{Input from sector 115 (numeric)}
#'   \item{116}{Input from sector 116 (numeric)}
#'   \item{117}{Input from sector 117 (numeric)}
#'   \item{118}{Input from sector 118 (numeric)}
#'   \item{119}{Input from sector 119 (numeric)}
#'   \item{120}{Input from sector 120 (numeric)}
#'   \item{121}{Input from sector 121 (numeric)}
#'   \item{122}{Input from sector 122 (numeric)}
#'   \item{123}{Input from sector 123 (numeric)}
#'   \item{124}{Input from sector 124 (numeric)}
#'   \item{125}{Input from sector 125 (numeric)}
#'   \item{126}{Input from sector 126 (numeric)}
#'   \item{127}{Input from sector 127 (numeric)}
#'   \item{128}{Input from sector 128 (numeric)}
#'   \item{129}{Input from sector 129 (numeric)}
#'   \item{130}{Input from sector 130 (numeric)}
#'   \item{131}{Input from sector 131 (numeric)}
#'   \item{132}{Input from sector 132 (numeric)}
#'   \item{133}{Input from sector 133 (numeric)}
#'   \item{134}{Input from sector 134 (numeric)}
#'   \item{135}{Input from sector 135 (numeric)}
#'   \item{136}{Input from sector 136 (numeric)}
#'   \item{137}{Input from sector 137 (numeric)}
#'   \item{138}{Input from sector 138 (numeric)}
#'   \item{139}{Input from sector 139 (numeric)}
#'   \item{140}{Input from sector 140 (numeric)}
#'   \item{141}{Input from sector 141 (numeric)}
#'   \item{142}{Input from sector 142 (numeric)}
#'   \item{143}{Input from sector 143 (numeric)}
#'   \item{144}{Input from sector 144 (numeric)}
#'   \item{145}{Input from sector 145 (numeric)}
#'   \item{146}{Input from sector 146 (numeric)}
#'   \item{147}{Input from sector 147 (numeric)}
#'   \item{148}{Input from sector 148 (numeric)}
#'   \item{149}{Input from sector 149 (numeric)}
#'   \item{150}{Input from sector 150 (numeric)}
#'   \item{151}{Input from sector 151 (numeric)}
#'   \item{152}{Input from sector 152 (numeric)}
#'   \item{153}{Input from sector 153 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2018_153_df)
#' @export
load("data/china_io_2018_153_df.rda")
NULL


#' China Input-Output Table (2017, 42 Sectors)
#'
#' This dataset, china_io_2017_42_df, is a data frame that represents the national input-output table of China for the year 2017.
#' It covers 42 sectors and provides inter-sectoral flows of goods and services. Data values are measured in 10,000 Chinese Yuan (CNY).
#'
#' The dataset name has been kept as 'china_io_2017_42_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2017_42_df
#' @format A data frame with 91 observations and 53 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{Origin}{Origin region or source (character)}
#'   \item{01}{Input from sector 01 (numeric)}
#'   \item{02}{Input from sector 02 (numeric)}
#'   \item{03}{Input from sector 03 (numeric)}
#'   \item{04}{Input from sector 04 (numeric)}
#'   \item{05}{Input from sector 05 (numeric)}
#'   \item{06}{Input from sector 06 (numeric)}
#'   \item{07}{Input from sector 07 (numeric)}
#'   \item{08}{Input from sector 08 (numeric)}
#'   \item{09}{Input from sector 09 (numeric)}
#'   \item{10}{Input from sector 10 (numeric)}
#'   \item{11}{Input from sector 11 (numeric)}
#'   \item{12}{Input from sector 12 (numeric)}
#'   \item{13}{Input from sector 13 (numeric)}
#'   \item{14}{Input from sector 14 (numeric)}
#'   \item{15}{Input from sector 15 (numeric)}
#'   \item{16}{Input from sector 16 (numeric)}
#'   \item{17}{Input from sector 17 (numeric)}
#'   \item{18}{Input from sector 18 (numeric)}
#'   \item{19}{Input from sector 19 (numeric)}
#'   \item{20}{Input from sector 20 (numeric)}
#'   \item{21}{Input from sector 21 (numeric)}
#'   \item{22}{Input from sector 22 (numeric)}
#'   \item{23}{Input from sector 23 (numeric)}
#'   \item{24}{Input from sector 24 (numeric)}
#'   \item{25}{Input from sector 25 (numeric)}
#'   \item{26}{Input from sector 26 (numeric)}
#'   \item{27}{Input from sector 27 (numeric)}
#'   \item{28}{Input from sector 28 (numeric)}
#'   \item{29}{Input from sector 29 (numeric)}
#'   \item{30}{Input from sector 30 (numeric)}
#'   \item{31}{Input from sector 31 (numeric)}
#'   \item{32}{Input from sector 32 (numeric)}
#'   \item{33}{Input from sector 33 (numeric)}
#'   \item{34}{Input from sector 34 (numeric)}
#'   \item{35}{Input from sector 35 (numeric)}
#'   \item{36}{Input from sector 36 (numeric)}
#'   \item{37}{Input from sector 37 (numeric)}
#'   \item{38}{Input from sector 38 (numeric)}
#'   \item{39}{Input from sector 39 (numeric)}
#'   \item{40}{Input from sector 40 (numeric)}
#'   \item{41}{Input from sector 41 (numeric)}
#'   \item{42}{Input from sector 42 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2017_42_df)
#' @export
load("data/china_io_2017_42_df.rda")
NULL



#' Input-output Table for China, 2017 (149 Sectors)
#'
#' This dataset, china_io_2017_149_df, is a data frame representing the national input-output table of China
#' for the year 2017. It covers 149 economic sectors and captures the inter-sectoral flows of goods and services.
#' The values are calculated at producers' prices and are expressed in 10,000 Chinese Yuan (CNY).
#'
#' The dataset name has been kept as 'china_io_2017_149_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2017_149_df
#' @format A data frame with 156 observations and 165 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Input from sector 001 (numeric)}
#'   \item{002}{Input from sector 002 (numeric)}
#'   \item{003}{Input from sector 003 (numeric)}
#'   \item{004}{Input from sector 004 (numeric)}
#'   \item{005}{Input from sector 005 (numeric)}
#'   \item{006}{Input from sector 006 (numeric)}
#'   \item{007}{Input from sector 007 (numeric)}
#'   \item{008}{Input from sector 008 (numeric)}
#'   \item{009}{Input from sector 009 (numeric)}
#'   \item{010}{Input from sector 010 (numeric)}
#'   \item{011}{Input from sector 011 (numeric)}
#'   \item{012}{Input from sector 012 (numeric)}
#'   \item{013}{Input from sector 013 (numeric)}
#'   \item{014}{Input from sector 014 (numeric)}
#'   \item{015}{Input from sector 015 (numeric)}
#'   \item{016}{Input from sector 016 (numeric)}
#'   \item{017}{Input from sector 017 (numeric)}
#'   \item{018}{Input from sector 018 (numeric)}
#'   \item{019}{Input from sector 019 (numeric)}
#'   \item{020}{Input from sector 020 (numeric)}
#'   \item{021}{Input from sector 021 (numeric)}
#'   \item{022}{Input from sector 022 (numeric)}
#'   \item{023}{Input from sector 023 (numeric)}
#'   \item{024}{Input from sector 024 (numeric)}
#'   \item{025}{Input from sector 025 (numeric)}
#'   \item{026}{Input from sector 026 (numeric)}
#'   \item{027}{Input from sector 027 (numeric)}
#'   \item{028}{Input from sector 028 (numeric)}
#'   \item{029}{Input from sector 029 (numeric)}
#'   \item{030}{Input from sector 030 (numeric)}
#'   \item{031}{Input from sector 031 (numeric)}
#'   \item{032}{Input from sector 032 (numeric)}
#'   \item{033}{Input from sector 033 (numeric)}
#'   \item{034}{Input from sector 034 (numeric)}
#'   \item{035}{Input from sector 035 (numeric)}
#'   \item{036}{Input from sector 036 (numeric)}
#'   \item{037}{Input from sector 037 (numeric)}
#'   \item{038}{Input from sector 038 (numeric)}
#'   \item{039}{Input from sector 039 (numeric)}
#'   \item{040}{Input from sector 040 (numeric)}
#'   \item{041}{Input from sector 041 (numeric)}
#'   \item{042}{Input from sector 042 (numeric)}
#'   \item{043}{Input from sector 043 (numeric)}
#'   \item{044}{Input from sector 044 (numeric)}
#'   \item{045}{Input from sector 045 (numeric)}
#'   \item{046}{Input from sector 046 (numeric)}
#'   \item{047}{Input from sector 047 (numeric)}
#'   \item{048}{Input from sector 048 (numeric)}
#'   \item{049}{Input from sector 049 (numeric)}
#'   \item{050}{Input from sector 050 (numeric)}
#'   \item{051}{Input from sector 051 (numeric)}
#'   \item{052}{Input from sector 052 (numeric)}
#'   \item{053}{Input from sector 053 (numeric)}
#'   \item{054}{Input from sector 054 (numeric)}
#'   \item{055}{Input from sector 055 (numeric)}
#'   \item{056}{Input from sector 056 (numeric)}
#'   \item{057}{Input from sector 057 (numeric)}
#'   \item{058}{Input from sector 058 (numeric)}
#'   \item{059}{Input from sector 059 (numeric)}
#'   \item{060}{Input from sector 060 (numeric)}
#'   \item{061}{Input from sector 061 (numeric)}
#'   \item{062}{Input from sector 062 (numeric)}
#'   \item{063}{Input from sector 063 (numeric)}
#'   \item{064}{Input from sector 064 (numeric)}
#'   \item{065}{Input from sector 065 (numeric)}
#'   \item{066}{Input from sector 066 (numeric)}
#'   \item{067}{Input from sector 067 (numeric)}
#'   \item{068}{Input from sector 068 (numeric)}
#'   \item{069}{Input from sector 069 (numeric)}
#'   \item{070}{Input from sector 070 (numeric)}
#'   \item{071}{Input from sector 071 (numeric)}
#'   \item{072}{Input from sector 072 (numeric)}
#'   \item{073}{Input from sector 073 (numeric)}
#'   \item{074}{Input from sector 074 (numeric)}
#'   \item{075}{Input from sector 075 (numeric)}
#'   \item{076}{Input from sector 076 (numeric)}
#'   \item{077}{Input from sector 077 (numeric)}
#'   \item{078}{Input from sector 078 (numeric)}
#'   \item{079}{Input from sector 079 (numeric)}
#'   \item{080}{Input from sector 080 (numeric)}
#'   \item{081}{Input from sector 081 (numeric)}
#'   \item{082}{Input from sector 082 (numeric)}
#'   \item{083}{Input from sector 083 (numeric)}
#'   \item{084}{Input from sector 084 (numeric)}
#'   \item{085}{Input from sector 085 (numeric)}
#'   \item{086}{Input from sector 086 (numeric)}
#'   \item{087}{Input from sector 087 (numeric)}
#'   \item{088}{Input from sector 088 (numeric)}
#'   \item{089}{Input from sector 089 (numeric)}
#'   \item{090}{Input from sector 090 (numeric)}
#'   \item{091}{Input from sector 091 (numeric)}
#'   \item{092}{Input from sector 092 (numeric)}
#'   \item{093}{Input from sector 093 (numeric)}
#'   \item{094}{Input from sector 094 (numeric)}
#'   \item{095}{Input from sector 095 (numeric)}
#'   \item{096}{Input from sector 096 (numeric)}
#'   \item{097}{Input from sector 097 (numeric)}
#'   \item{098}{Input from sector 098 (numeric)}
#'   \item{099}{Input from sector 099 (numeric)}
#'   \item{100}{Input from sector 100 (numeric)}
#'   \item{101}{Input from sector 101 (numeric)}
#'   \item{102}{Input from sector 102 (numeric)}
#'   \item{103}{Input from sector 103 (numeric)}
#'   \item{104}{Input from sector 104 (numeric)}
#'   \item{105}{Input from sector 105 (numeric)}
#'   \item{106}{Input from sector 106 (numeric)}
#'   \item{107}{Input from sector 107 (numeric)}
#'   \item{108}{Input from sector 108 (numeric)}
#'   \item{109}{Input from sector 109 (numeric)}
#'   \item{110}{Input from sector 110 (numeric)}
#'   \item{111}{Input from sector 111 (numeric)}
#'   \item{112}{Input from sector 112 (numeric)}
#'   \item{113}{Input from sector 113 (numeric)}
#'   \item{114}{Input from sector 114 (numeric)}
#'   \item{115}{Input from sector 115 (numeric)}
#'   \item{116}{Input from sector 116 (numeric)}
#'   \item{117}{Input from sector 117 (numeric)}
#'   \item{118}{Input from sector 118 (numeric)}
#'   \item{119}{Input from sector 119 (numeric)}
#'   \item{120}{Input from sector 120 (numeric)}
#'   \item{121}{Input from sector 121 (numeric)}
#'   \item{122}{Input from sector 122 (numeric)}
#'   \item{123}{Input from sector 123 (numeric)}
#'   \item{124}{Input from sector 124 (numeric)}
#'   \item{125}{Input from sector 125 (numeric)}
#'   \item{126}{Input from sector 126 (numeric)}
#'   \item{127}{Input from sector 127 (numeric)}
#'   \item{128}{Input from sector 128 (numeric)}
#'   \item{129}{Input from sector 129 (numeric)}
#'   \item{130}{Input from sector 130 (numeric)}
#'   \item{131}{Input from sector 131 (numeric)}
#'   \item{132}{Input from sector 132 (numeric)}
#'   \item{133}{Input from sector 133 (numeric)}
#'   \item{134}{Input from sector 134 (numeric)}
#'   \item{135}{Input from sector 135 (numeric)}
#'   \item{136}{Input from sector 136 (numeric)}
#'   \item{137}{Input from sector 137 (numeric)}
#'   \item{138}{Input from sector 138 (numeric)}
#'   \item{139}{Input from sector 139 (numeric)}
#'   \item{140}{Input from sector 140 (numeric)}
#'   \item{141}{Input from sector 141 (numeric)}
#'   \item{142}{Input from sector 142 (numeric)}
#'   \item{143}{Input from sector 143 (numeric)}
#'   \item{144}{Input from sector 144 (numeric)}
#'   \item{145}{Input from sector 145 (numeric)}
#'   \item{146}{Input from sector 146 (numeric)}
#'   \item{147}{Input from sector 147 (numeric)}
#'   \item{148}{Input from sector 148 (numeric)}
#'   \item{149}{Input from sector 149 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2017_149_df)
#' @export
load("data/china_io_2017_149_df.rda")
NULL


#' Input-output Table for China, 2015 (42 Sectors)
#'
#' This dataset, china_io_2015_42_df, is a data frame representing the national input-output table of China
#' for the year 2015. It covers 42 economic sectors and captures the inter-sectoral flows of goods and services.
#' The values are calculated at producers' prices and are expressed in 10,000 Chinese Yuan (CNY).
#'
#' The dataset name has been kept as 'china_io_2015_42_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2015_42_df
#' @format A data frame with 49 observations and 59 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{01}{Input from sector 01 (numeric)}
#'   \item{02}{Input from sector 02 (numeric)}
#'   \item{03}{Input from sector 03 (numeric)}
#'   \item{04}{Input from sector 04 (numeric)}
#'   \item{05}{Input from sector 05 (numeric)}
#'   \item{06}{Input from sector 06 (numeric)}
#'   \item{07}{Input from sector 07 (numeric)}
#'   \item{08}{Input from sector 08 (numeric)}
#'   \item{09}{Input from sector 09 (numeric)}
#'   \item{10}{Input from sector 10 (numeric)}
#'   \item{11}{Input from sector 11 (numeric)}
#'   \item{12}{Input from sector 12 (numeric)}
#'   \item{13}{Input from sector 13 (numeric)}
#'   \item{14}{Input from sector 14 (numeric)}
#'   \item{15}{Input from sector 15 (numeric)}
#'   \item{16}{Input from sector 16 (numeric)}
#'   \item{17}{Input from sector 17 (numeric)}
#'   \item{18}{Input from sector 18 (numeric)}
#'   \item{19}{Input from sector 19 (numeric)}
#'   \item{20}{Input from sector 20 (numeric)}
#'   \item{21}{Input from sector 21 (numeric)}
#'   \item{22}{Input from sector 22 (numeric)}
#'   \item{23}{Input from sector 23 (numeric)}
#'   \item{24}{Input from sector 24 (numeric)}
#'   \item{25}{Input from sector 25 (numeric)}
#'   \item{26}{Input from sector 26 (numeric)}
#'   \item{27}{Input from sector 27 (numeric)}
#'   \item{28}{Input from sector 28 (numeric)}
#'   \item{29}{Input from sector 29 (numeric)}
#'   \item{30}{Input from sector 30 (numeric)}
#'   \item{31}{Input from sector 31 (numeric)}
#'   \item{32}{Input from sector 32 (numeric)}
#'   \item{33}{Input from sector 33 (numeric)}
#'   \item{34}{Input from sector 34 (numeric)}
#'   \item{35}{Input from sector 35 (numeric)}
#'   \item{36}{Input from sector 36 (numeric)}
#'   \item{37}{Input from sector 37 (numeric)}
#'   \item{38}{Input from sector 38 (numeric)}
#'   \item{39}{Input from sector 39 (numeric)}
#'   \item{40}{Input from sector 40 (numeric)}
#'   \item{41}{Input from sector 41 (numeric)}
#'   \item{42}{Input from sector 42 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2015_42_df)
#' @export
load("data/china_io_2015_42_df.rda")
NULL


#' Input-output Table for China, 2012 (139 Sectors)
#'
#' This dataset, china_io_2012_139_df, is a data frame representing the national input-output table of China for the year 2012.
#' It covers 139 sectors and provides inter-sectoral flows of goods and services. Data values are measured in 10,000 Chinese Yuan (CNY)
#' and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2012_139_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified in any way.
#'
#' @name china_io_2012_139_df
#' @format A data frame with 146 observations and 155 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Input from sector 001 (numeric)}
#'   \item{002}{Input from sector 002 (numeric)}
#'   \item{003}{Input from sector 003 (numeric)}
#'   \item{004}{Input from sector 004 (numeric)}
#'   \item{005}{Input from sector 005 (numeric)}
#'   \item{006}{Input from sector 006 (numeric)}
#'   \item{007}{Input from sector 007 (numeric)}
#'   \item{008}{Input from sector 008 (numeric)}
#'   \item{009}{Input from sector 009 (numeric)}
#'   \item{010}{Input from sector 010 (numeric)}
#'   \item{011}{Input from sector 011 (numeric)}
#'   \item{012}{Input from sector 012 (numeric)}
#'   \item{013}{Input from sector 013 (numeric)}
#'   \item{014}{Input from sector 014 (numeric)}
#'   \item{015}{Input from sector 015 (numeric)}
#'   \item{016}{Input from sector 016 (numeric)}
#'   \item{017}{Input from sector 017 (numeric)}
#'   \item{018}{Input from sector 018 (numeric)}
#'   \item{019}{Input from sector 019 (numeric)}
#'   \item{020}{Input from sector 020 (numeric)}
#'   \item{021}{Input from sector 021 (numeric)}
#'   \item{022}{Input from sector 022 (numeric)}
#'   \item{023}{Input from sector 023 (numeric)}
#'   \item{024}{Input from sector 024 (numeric)}
#'   \item{025}{Input from sector 025 (numeric)}
#'   \item{026}{Input from sector 026 (numeric)}
#'   \item{027}{Input from sector 027 (numeric)}
#'   \item{028}{Input from sector 028 (numeric)}
#'   \item{029}{Input from sector 029 (numeric)}
#'   \item{030}{Input from sector 030 (numeric)}
#'   \item{031}{Input from sector 031 (numeric)}
#'   \item{032}{Input from sector 032 (numeric)}
#'   \item{033}{Input from sector 033 (numeric)}
#'   \item{034}{Input from sector 034 (numeric)}
#'   \item{035}{Input from sector 035 (numeric)}
#'   \item{036}{Input from sector 036 (numeric)}
#'   \item{037}{Input from sector 037 (numeric)}
#'   \item{038}{Input from sector 038 (numeric)}
#'   \item{039}{Input from sector 039 (numeric)}
#'   \item{040}{Input from sector 040 (numeric)}
#'   \item{041}{Input from sector 041 (numeric)}
#'   \item{042}{Input from sector 042 (numeric)}
#'   \item{043}{Input from sector 043 (numeric)}
#'   \item{044}{Input from sector 044 (numeric)}
#'   \item{045}{Input from sector 045 (numeric)}
#'   \item{046}{Input from sector 046 (numeric)}
#'   \item{047}{Input from sector 047 (numeric)}
#'   \item{048}{Input from sector 048 (numeric)}
#'   \item{049}{Input from sector 049 (numeric)}
#'   \item{050}{Input from sector 050 (numeric)}
#'   \item{051}{Input from sector 051 (numeric)}
#'   \item{052}{Input from sector 052 (numeric)}
#'   \item{053}{Input from sector 053 (numeric)}
#'   \item{054}{Input from sector 054 (numeric)}
#'   \item{055}{Input from sector 055 (numeric)}
#'   \item{056}{Input from sector 056 (numeric)}
#'   \item{057}{Input from sector 057 (numeric)}
#'   \item{058}{Input from sector 058 (numeric)}
#'   \item{059}{Input from sector 059 (numeric)}
#'   \item{060}{Input from sector 060 (numeric)}
#'   \item{061}{Input from sector 061 (numeric)}
#'   \item{062}{Input from sector 062 (numeric)}
#'   \item{063}{Input from sector 063 (numeric)}
#'   \item{064}{Input from sector 064 (numeric)}
#'   \item{065}{Input from sector 065 (numeric)}
#'   \item{066}{Input from sector 066 (numeric)}
#'   \item{067}{Input from sector 067 (numeric)}
#'   \item{068}{Input from sector 068 (numeric)}
#'   \item{069}{Input from sector 069 (numeric)}
#'   \item{070}{Input from sector 070 (numeric)}
#'   \item{071}{Input from sector 071 (numeric)}
#'   \item{072}{Input from sector 072 (numeric)}
#'   \item{073}{Input from sector 073 (numeric)}
#'   \item{074}{Input from sector 074 (numeric)}
#'   \item{075}{Input from sector 075 (numeric)}
#'   \item{076}{Input from sector 076 (numeric)}
#'   \item{077}{Input from sector 077 (numeric)}
#'   \item{078}{Input from sector 078 (numeric)}
#'   \item{079}{Input from sector 079 (numeric)}
#'   \item{080}{Input from sector 080 (numeric)}
#'   \item{081}{Input from sector 081 (numeric)}
#'   \item{082}{Input from sector 082 (numeric)}
#'   \item{083}{Input from sector 083 (numeric)}
#'   \item{084}{Input from sector 084 (numeric)}
#'   \item{085}{Input from sector 085 (numeric)}
#'   \item{086}{Input from sector 086 (numeric)}
#'   \item{087}{Input from sector 087 (numeric)}
#'   \item{088}{Input from sector 088 (numeric)}
#'   \item{089}{Input from sector 089 (numeric)}
#'   \item{090}{Input from sector 090 (numeric)}
#'   \item{091}{Input from sector 091 (numeric)}
#'   \item{092}{Input from sector 092 (numeric)}
#'   \item{093}{Input from sector 093 (numeric)}
#'   \item{094}{Input from sector 094 (numeric)}
#'   \item{095}{Input from sector 095 (numeric)}
#'   \item{096}{Input from sector 096 (numeric)}
#'   \item{097}{Input from sector 097 (numeric)}
#'   \item{098}{Input from sector 098 (numeric)}
#'   \item{099}{Input from sector 099 (numeric)}
#'   \item{100}{Input from sector 100 (numeric)}
#'   \item{101}{Input from sector 101 (numeric)}
#'   \item{102}{Input from sector 102 (numeric)}
#'   \item{103}{Input from sector 103 (numeric)}
#'   \item{104}{Input from sector 104 (numeric)}
#'   \item{105}{Input from sector 105 (numeric)}
#'   \item{106}{Input from sector 106 (numeric)}
#'   \item{107}{Input from sector 107 (numeric)}
#'   \item{108}{Input from sector 108 (numeric)}
#'   \item{109}{Input from sector 109 (numeric)}
#'   \item{110}{Input from sector 110 (numeric)}
#'   \item{111}{Input from sector 111 (numeric)}
#'   \item{112}{Input from sector 112 (numeric)}
#'   \item{113}{Input from sector 113 (numeric)}
#'   \item{114}{Input from sector 114 (numeric)}
#'   \item{115}{Input from sector 115 (numeric)}
#'   \item{116}{Input from sector 116 (numeric)}
#'   \item{117}{Input from sector 117 (numeric)}
#'   \item{118}{Input from sector 118 (numeric)}
#'   \item{119}{Input from sector 119 (numeric)}
#'   \item{120}{Input from sector 120 (numeric)}
#'   \item{121}{Input from sector 121 (numeric)}
#'   \item{122}{Input from sector 122 (numeric)}
#'   \item{123}{Input from sector 123 (numeric)}
#'   \item{124}{Input from sector 124 (numeric)}
#'   \item{125}{Input from sector 125 (numeric)}
#'   \item{126}{Input from sector 126 (numeric)}
#'   \item{127}{Input from sector 127 (numeric)}
#'   \item{128}{Input from sector 128 (numeric)}
#'   \item{129}{Input from sector 129 (numeric)}
#'   \item{130}{Input from sector 130 (numeric)}
#'   \item{131}{Input from sector 131 (numeric)}
#'   \item{132}{Input from sector 132 (numeric)}
#'   \item{133}{Input from sector 133 (numeric)}
#'   \item{134}{Input from sector 134 (numeric)}
#'   \item{135}{Input from sector 135 (numeric)}
#'   \item{136}{Input from sector 136 (numeric)}
#'   \item{137}{Input from sector 137 (numeric)}
#'   \item{138}{Input from sector 138 (numeric)}
#'   \item{139}{Input from sector 139 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2012_139_df)
#' @export
load("data/china_io_2012_139_df.rda")
NULL


#' Input-output Table for China, 2010 (41 Sectors)
#'
#' This dataset, china_io_2010_41_df, is a data frame that represents the national input-output table
#' of China for the year 2010. It covers 41 economic sectors and provides inter-sectoral flows of goods
#' and services. Data values are measured in 10,000 Chinese Yuan (CNY) and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2010_41_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2010_41_df
#' @format A data frame with 48 observations and 58 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{01}{Intermediate demand from sector 01 (numeric)}
#'   \item{02}{Intermediate demand from sector 02 (numeric)}
#'   \item{03}{Intermediate demand from sector 03 (numeric)}
#'   \item{04}{Intermediate demand from sector 04 (numeric)}
#'   \item{05}{Intermediate demand from sector 05 (numeric)}
#'   \item{06}{Intermediate demand from sector 06 (numeric)}
#'   \item{07}{Intermediate demand from sector 07 (numeric)}
#'   \item{08}{Intermediate demand from sector 08 (numeric)}
#'   \item{09}{Intermediate demand from sector 09 (numeric)}
#'   \item{10}{Intermediate demand from sector 10 (numeric)}
#'   \item{11}{Intermediate demand from sector 11 (numeric)}
#'   \item{12}{Intermediate demand from sector 12 (numeric)}
#'   \item{13}{Intermediate demand from sector 13 (numeric)}
#'   \item{14}{Intermediate demand from sector 14 (numeric)}
#'   \item{15}{Intermediate demand from sector 15 (numeric)}
#'   \item{16}{Intermediate demand from sector 16 (numeric)}
#'   \item{17}{Intermediate demand from sector 17 (numeric)}
#'   \item{18}{Intermediate demand from sector 18 (numeric)}
#'   \item{19}{Intermediate demand from sector 19 (numeric)}
#'   \item{20}{Intermediate demand from sector 20 (numeric)}
#'   \item{21}{Intermediate demand from sector 21 (numeric)}
#'   \item{22}{Intermediate demand from sector 22 (numeric)}
#'   \item{23}{Intermediate demand from sector 23 (numeric)}
#'   \item{24}{Intermediate demand from sector 24 (numeric)}
#'   \item{25}{Intermediate demand from sector 25 (numeric)}
#'   \item{26}{Intermediate demand from sector 26 (numeric)}
#'   \item{27}{Intermediate demand from sector 27 (numeric)}
#'   \item{28}{Intermediate demand from sector 28 (numeric)}
#'   \item{29}{Intermediate demand from sector 29 (numeric)}
#'   \item{30}{Intermediate demand from sector 30 (numeric)}
#'   \item{31}{Intermediate demand from sector 31 (numeric)}
#'   \item{32}{Intermediate demand from sector 32 (numeric)}
#'   \item{33}{Intermediate demand from sector 33 (numeric)}
#'   \item{34}{Intermediate demand from sector 34 (numeric)}
#'   \item{35}{Intermediate demand from sector 35 (numeric)}
#'   \item{36}{Intermediate demand from sector 36 (numeric)}
#'   \item{37}{Intermediate demand from sector 37 (numeric)}
#'   \item{38}{Intermediate demand from sector 38 (numeric)}
#'   \item{39}{Intermediate demand from sector 39 (numeric)}
#'   \item{40}{Intermediate demand from sector 40 (numeric)}
#'   \item{41}{Intermediate demand from sector 41 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2010_41_df)
#' @export
load("data/china_io_2010_41_df.rda")
NULL



#' Input-output Table for China, 2002 (122 Sectors)
#'
#' This dataset, china_io_2002_122_df, is a data frame that represents the national input-output table
#' of China for the year 2002. It covers 122 economic sectors and provides inter-sectoral flows of goods
#' and services. Data values are measured in 10,000 Chinese Yuan (CNY) and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2002_122_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2002_122_df
#' @format A data frame with 129 observations and 139 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Intermediate demand from sector 001 (numeric)}
#'   \item{002}{Intermediate demand from sector 002 (numeric)}
#'   \item{003}{Intermediate demand from sector 003 (numeric)}
#'   \item{004}{Intermediate demand from sector 004 (numeric)}
#'   \item{005}{Intermediate demand from sector 005 (numeric)}
#'   \item{006}{Intermediate demand from sector 006 (numeric)}
#'   \item{007}{Intermediate demand from sector 007 (numeric)}
#'   \item{008}{Intermediate demand from sector 008 (numeric)}
#'   \item{009}{Intermediate demand from sector 009 (numeric)}
#'   \item{010}{Intermediate demand from sector 010 (numeric)}
#'   \item{011}{Intermediate demand from sector 011 (numeric)}
#'   \item{012}{Intermediate demand from sector 012 (numeric)}
#'   \item{013}{Intermediate demand from sector 013 (numeric)}
#'   \item{014}{Intermediate demand from sector 014 (numeric)}
#'   \item{015}{Intermediate demand from sector 015 (numeric)}
#'   \item{016}{Intermediate demand from sector 016 (numeric)}
#'   \item{017}{Intermediate demand from sector 017 (numeric)}
#'   \item{018}{Intermediate demand from sector 018 (numeric)}
#'   \item{019}{Intermediate demand from sector 019 (numeric)}
#'   \item{020}{Intermediate demand from sector 020 (numeric)}
#'   \item{021}{Intermediate demand from sector 021 (numeric)}
#'   \item{022}{Intermediate demand from sector 022 (numeric)}
#'   \item{023}{Intermediate demand from sector 023 (numeric)}
#'   \item{024}{Intermediate demand from sector 024 (numeric)}
#'   \item{025}{Intermediate demand from sector 025 (numeric)}
#'   \item{026}{Intermediate demand from sector 026 (numeric)}
#'   \item{027}{Intermediate demand from sector 027 (numeric)}
#'   \item{028}{Intermediate demand from sector 028 (numeric)}
#'   \item{029}{Intermediate demand from sector 029 (numeric)}
#'   \item{030}{Intermediate demand from sector 030 (numeric)}
#'   \item{031}{Intermediate demand from sector 031 (numeric)}
#'   \item{032}{Intermediate demand from sector 032 (numeric)}
#'   \item{033}{Intermediate demand from sector 033 (numeric)}
#'   \item{034}{Intermediate demand from sector 034 (numeric)}
#'   \item{035}{Intermediate demand from sector 035 (numeric)}
#'   \item{036}{Intermediate demand from sector 036 (numeric)}
#'   \item{037}{Intermediate demand from sector 037 (numeric)}
#'   \item{038}{Intermediate demand from sector 038 (numeric)}
#'   \item{039}{Intermediate demand from sector 039 (numeric)}
#'   \item{040}{Intermediate demand from sector 040 (numeric)}
#'   \item{041}{Intermediate demand from sector 041 (numeric)}
#'   \item{042}{Intermediate demand from sector 042 (numeric)}
#'   \item{043}{Intermediate demand from sector 043 (numeric)}
#'   \item{044}{Intermediate demand from sector 044 (numeric)}
#'   \item{045}{Intermediate demand from sector 045 (numeric)}
#'   \item{046}{Intermediate demand from sector 046 (numeric)}
#'   \item{047}{Intermediate demand from sector 047 (numeric)}
#'   \item{048}{Intermediate demand from sector 048 (numeric)}
#'   \item{049}{Intermediate demand from sector 049 (numeric)}
#'   \item{050}{Intermediate demand from sector 050 (numeric)}
#'   \item{051}{Intermediate demand from sector 051 (numeric)}
#'   \item{052}{Intermediate demand from sector 052 (numeric)}
#'   \item{053}{Intermediate demand from sector 053 (numeric)}
#'   \item{054}{Intermediate demand from sector 054 (numeric)}
#'   \item{055}{Intermediate demand from sector 055 (numeric)}
#'   \item{056}{Intermediate demand from sector 056 (numeric)}
#'   \item{057}{Intermediate demand from sector 057 (numeric)}
#'   \item{058}{Intermediate demand from sector 058 (numeric)}
#'   \item{059}{Intermediate demand from sector 059 (numeric)}
#'   \item{060}{Intermediate demand from sector 060 (numeric)}
#'   \item{061}{Intermediate demand from sector 061 (numeric)}
#'   \item{062}{Intermediate demand from sector 062 (numeric)}
#'   \item{063}{Intermediate demand from sector 063 (numeric)}
#'   \item{064}{Intermediate demand from sector 064 (numeric)}
#'   \item{065}{Intermediate demand from sector 065 (numeric)}
#'   \item{066}{Intermediate demand from sector 066 (numeric)}
#'   \item{067}{Intermediate demand from sector 067 (numeric)}
#'   \item{068}{Intermediate demand from sector 068 (numeric)}
#'   \item{069}{Intermediate demand from sector 069 (numeric)}
#'   \item{070}{Intermediate demand from sector 070 (numeric)}
#'   \item{071}{Intermediate demand from sector 071 (numeric)}
#'   \item{072}{Intermediate demand from sector 072 (numeric)}
#'   \item{073}{Intermediate demand from sector 073 (numeric)}
#'   \item{074}{Intermediate demand from sector 074 (numeric)}
#'   \item{075}{Intermediate demand from sector 075 (numeric)}
#'   \item{076}{Intermediate demand from sector 076 (numeric)}
#'   \item{077}{Intermediate demand from sector 077 (numeric)}
#'   \item{078}{Intermediate demand from sector 078 (numeric)}
#'   \item{079}{Intermediate demand from sector 079 (numeric)}
#'   \item{080}{Intermediate demand from sector 080 (numeric)}
#'   \item{081}{Intermediate demand from sector 081 (numeric)}
#'   \item{082}{Intermediate demand from sector 082 (numeric)}
#'   \item{083}{Intermediate demand from sector 083 (numeric)}
#'   \item{084}{Intermediate demand from sector 084 (numeric)}
#'   \item{085}{Intermediate demand from sector 085 (numeric)}
#'   \item{086}{Intermediate demand from sector 086 (numeric)}
#'   \item{087}{Intermediate demand from sector 087 (numeric)}
#'   \item{088}{Intermediate demand from sector 088 (numeric)}
#'   \item{089}{Intermediate demand from sector 089 (numeric)}
#'   \item{090}{Intermediate demand from sector 090 (numeric)}
#'   \item{091}{Intermediate demand from sector 091 (numeric)}
#'   \item{092}{Intermediate demand from sector 092 (numeric)}
#'   \item{093}{Intermediate demand from sector 093 (numeric)}
#'   \item{094}{Intermediate demand from sector 094 (numeric)}
#'   \item{095}{Intermediate demand from sector 095 (numeric)}
#'   \item{096}{Intermediate demand from sector 096 (numeric)}
#'   \item{097}{Intermediate demand from sector 097 (numeric)}
#'   \item{098}{Intermediate demand from sector 098 (numeric)}
#'   \item{099}{Intermediate demand from sector 099 (numeric)}
#'   \item{100}{Intermediate demand from sector 100 (numeric)}
#'   \item{101}{Intermediate demand from sector 101 (numeric)}
#'   \item{102}{Intermediate demand from sector 102 (numeric)}
#'   \item{103}{Intermediate demand from sector 103 (numeric)}
#'   \item{104}{Intermediate demand from sector 104 (numeric)}
#'   \item{105}{Intermediate demand from sector 105 (numeric)}
#'   \item{106}{Intermediate demand from sector 106 (numeric)}
#'   \item{107}{Intermediate demand from sector 107 (numeric)}
#'   \item{108}{Intermediate demand from sector 108 (numeric)}
#'   \item{109}{Intermediate demand from sector 109 (numeric)}
#'   \item{110}{Intermediate demand from sector 110 (numeric)}
#'   \item{111}{Intermediate demand from sector 111 (numeric)}
#'   \item{112}{Intermediate demand from sector 112 (numeric)}
#'   \item{113}{Intermediate demand from sector 113 (numeric)}
#'   \item{114}{Intermediate demand from sector 114 (numeric)}
#'   \item{115}{Intermediate demand from sector 115 (numeric)}
#'   \item{116}{Intermediate demand from sector 116 (numeric)}
#'   \item{117}{Intermediate demand from sector 117 (numeric)}
#'   \item{118}{Intermediate demand from sector 118 (numeric)}
#'   \item{119}{Intermediate demand from sector 119 (numeric)}
#'   \item{120}{Intermediate demand from sector 120 (numeric)}
#'   \item{121}{Intermediate demand from sector 121 (numeric)}
#'   \item{122}{Intermediate demand from sector 122 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2002_122_df)
#' @export
load("data/china_io_2002_122_df.rda")
NULL


#' Input-output Table for China, 2005 (42 Sectors)
#'
#' This dataset, china_io_2005_42_df, is a data frame that represents the national input-output table
#' of China for the year 2005. It covers 42 economic sectors and provides inter-sectoral flows of goods
#' and services. Data values are measured in 10,000 Chinese Yuan (CNY) and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2005_42_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2005_42_df
#' @format A data frame with 49 observations and 55 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{01}{Intermediate demand from sector 01 (numeric)}
#'   \item{02}{Intermediate demand from sector 02 (numeric)}
#'   \item{03}{Intermediate demand from sector 03 (numeric)}
#'   \item{04}{Intermediate demand from sector 04 (numeric)}
#'   \item{05}{Intermediate demand from sector 05 (numeric)}
#'   \item{06}{Intermediate demand from sector 06 (numeric)}
#'   \item{07}{Intermediate demand from sector 07 (numeric)}
#'   \item{08}{Intermediate demand from sector 08 (numeric)}
#'   \item{09}{Intermediate demand from sector 09 (numeric)}
#'   \item{10}{Intermediate demand from sector 10 (numeric)}
#'   \item{11}{Intermediate demand from sector 11 (numeric)}
#'   \item{12}{Intermediate demand from sector 12 (numeric)}
#'   \item{13}{Intermediate demand from sector 13 (numeric)}
#'   \item{14}{Intermediate demand from sector 14 (numeric)}
#'   \item{15}{Intermediate demand from sector 15 (numeric)}
#'   \item{16}{Intermediate demand from sector 16 (numeric)}
#'   \item{17}{Intermediate demand from sector 17 (numeric)}
#'   \item{18}{Intermediate demand from sector 18 (numeric)}
#'   \item{19}{Intermediate demand from sector 19 (numeric)}
#'   \item{20}{Intermediate demand from sector 20 (numeric)}
#'   \item{21}{Intermediate demand from sector 21 (numeric)}
#'   \item{22}{Intermediate demand from sector 22 (numeric)}
#'   \item{23}{Intermediate demand from sector 23 (numeric)}
#'   \item{24}{Intermediate demand from sector 24 (numeric)}
#'   \item{25}{Intermediate demand from sector 25 (numeric)}
#'   \item{26}{Intermediate demand from sector 26 (numeric)}
#'   \item{27}{Intermediate demand from sector 27 (numeric)}
#'   \item{28}{Intermediate demand from sector 28 (numeric)}
#'   \item{29}{Intermediate demand from sector 29 (numeric)}
#'   \item{30}{Intermediate demand from sector 30 (numeric)}
#'   \item{31}{Intermediate demand from sector 31 (numeric)}
#'   \item{32}{Intermediate demand from sector 32 (numeric)}
#'   \item{33}{Intermediate demand from sector 33 (numeric)}
#'   \item{34}{Intermediate demand from sector 34 (numeric)}
#'   \item{35}{Intermediate demand from sector 35 (numeric)}
#'   \item{36}{Intermediate demand from sector 36 (numeric)}
#'   \item{37}{Intermediate demand from sector 37 (numeric)}
#'   \item{38}{Intermediate demand from sector 38 (numeric)}
#'   \item{39}{Intermediate demand from sector 39 (numeric)}
#'   \item{40}{Intermediate demand from sector 40 (numeric)}
#'   \item{41}{Intermediate demand from sector 41 (numeric)}
#'   \item{42}{Intermediate demand from sector 42 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2005_42_df)
#' @export
load("data/china_io_2005_42_df.rda")
NULL



#' Input-output Table for China, 2007 (135 Sectors)
#'
#' This dataset, china_io_2007_135_df, is a data frame that represents the national input-output table
#' of China for the year 2007. It covers 135 economic sectors and provides inter-sectoral flows of goods
#' and services. Data values are measured in 10,000 Chinese Yuan (CNY) and calculated at producers' prices.
#'
#' The dataset name has been kept as 'china_io_2007_135_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' ChinAPIs package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a base R data frame. The original content has not been modified
#' in any way.
#'
#' @name china_io_2007_135_df
#' @format A data frame with 142 observations and 152 variables:
#' \describe{
#'   \item{Code}{Sector code (character)}
#'   \item{Description}{Sector description in English (character)}
#'   \item{DescriptionInChinese}{Sector description in Chinese (character)}
#'   \item{001}{Intermediate demand from sector 001 (numeric)}
#'   \item{002}{Intermediate demand from sector 002 (numeric)}
#'   \item{003}{Intermediate demand from sector 003 (numeric)}
#'   \item{004}{Intermediate demand from sector 004 (numeric)}
#'   \item{005}{Intermediate demand from sector 005 (numeric)}
#'   \item{006}{Intermediate demand from sector 006 (numeric)}
#'   \item{007}{Intermediate demand from sector 007 (numeric)}
#'   \item{008}{Intermediate demand from sector 008 (numeric)}
#'   \item{009}{Intermediate demand from sector 009 (numeric)}
#'   \item{010}{Intermediate demand from sector 010 (numeric)}
#'   \item{011}{Intermediate demand from sector 011 (numeric)}
#'   \item{012}{Intermediate demand from sector 012 (numeric)}
#'   \item{013}{Intermediate demand from sector 013 (numeric)}
#'   \item{014}{Intermediate demand from sector 014 (numeric)}
#'   \item{015}{Intermediate demand from sector 015 (numeric)}
#'   \item{016}{Intermediate demand from sector 016 (numeric)}
#'   \item{017}{Intermediate demand from sector 017 (numeric)}
#'   \item{018}{Intermediate demand from sector 018 (numeric)}
#'   \item{019}{Intermediate demand from sector 019 (numeric)}
#'   \item{020}{Intermediate demand from sector 020 (numeric)}
#'   \item{021}{Intermediate demand from sector 021 (numeric)}
#'   \item{022}{Intermediate demand from sector 022 (numeric)}
#'   \item{023}{Intermediate demand from sector 023 (numeric)}
#'   \item{024}{Intermediate demand from sector 024 (numeric)}
#'   \item{025}{Intermediate demand from sector 025 (numeric)}
#'   \item{026}{Intermediate demand from sector 026 (numeric)}
#'   \item{027}{Intermediate demand from sector 027 (numeric)}
#'   \item{028}{Intermediate demand from sector 028 (numeric)}
#'   \item{029}{Intermediate demand from sector 029 (numeric)}
#'   \item{030}{Intermediate demand from sector 030 (numeric)}
#'   \item{031}{Intermediate demand from sector 031 (numeric)}
#'   \item{032}{Intermediate demand from sector 032 (numeric)}
#'   \item{033}{Intermediate demand from sector 033 (numeric)}
#'   \item{034}{Intermediate demand from sector 034 (numeric)}
#'   \item{035}{Intermediate demand from sector 035 (numeric)}
#'   \item{036}{Intermediate demand from sector 036 (numeric)}
#'   \item{037}{Intermediate demand from sector 037 (numeric)}
#'   \item{038}{Intermediate demand from sector 038 (numeric)}
#'   \item{039}{Intermediate demand from sector 039 (numeric)}
#'   \item{040}{Intermediate demand from sector 040 (numeric)}
#'   \item{041}{Intermediate demand from sector 041 (numeric)}
#'   \item{042}{Intermediate demand from sector 042 (numeric)}
#'   \item{043}{Intermediate demand from sector 043 (numeric)}
#'   \item{044}{Intermediate demand from sector 044 (numeric)}
#'   \item{045}{Intermediate demand from sector 045 (numeric)}
#'   \item{046}{Intermediate demand from sector 046 (numeric)}
#'   \item{047}{Intermediate demand from sector 047 (numeric)}
#'   \item{048}{Intermediate demand from sector 048 (numeric)}
#'   \item{049}{Intermediate demand from sector 049 (numeric)}
#'   \item{050}{Intermediate demand from sector 050 (numeric)}
#'   \item{051}{Intermediate demand from sector 051 (numeric)}
#'   \item{052}{Intermediate demand from sector 052 (numeric)}
#'   \item{053}{Intermediate demand from sector 053 (numeric)}
#'   \item{054}{Intermediate demand from sector 054 (numeric)}
#'   \item{055}{Intermediate demand from sector 055 (numeric)}
#'   \item{056}{Intermediate demand from sector 056 (numeric)}
#'   \item{057}{Intermediate demand from sector 057 (numeric)}
#'   \item{058}{Intermediate demand from sector 058 (numeric)}
#'   \item{059}{Intermediate demand from sector 059 (numeric)}
#'   \item{060}{Intermediate demand from sector 060 (numeric)}
#'   \item{061}{Intermediate demand from sector 061 (numeric)}
#'   \item{062}{Intermediate demand from sector 062 (numeric)}
#'   \item{063}{Intermediate demand from sector 063 (numeric)}
#'   \item{064}{Intermediate demand from sector 064 (numeric)}
#'   \item{065}{Intermediate demand from sector 065 (numeric)}
#'   \item{066}{Intermediate demand from sector 066 (numeric)}
#'   \item{067}{Intermediate demand from sector 067 (numeric)}
#'   \item{068}{Intermediate demand from sector 068 (numeric)}
#'   \item{069}{Intermediate demand from sector 069 (numeric)}
#'   \item{070}{Intermediate demand from sector 070 (numeric)}
#'   \item{071}{Intermediate demand from sector 071 (numeric)}
#'   \item{072}{Intermediate demand from sector 072 (numeric)}
#'   \item{073}{Intermediate demand from sector 073 (numeric)}
#'   \item{074}{Intermediate demand from sector 074 (numeric)}
#'   \item{075}{Intermediate demand from sector 075 (numeric)}
#'   \item{076}{Intermediate demand from sector 076 (numeric)}
#'   \item{077}{Intermediate demand from sector 077 (numeric)}
#'   \item{078}{Intermediate demand from sector 078 (numeric)}
#'   \item{079}{Intermediate demand from sector 079 (numeric)}
#'   \item{080}{Intermediate demand from sector 080 (numeric)}
#'   \item{081}{Intermediate demand from sector 081 (numeric)}
#'   \item{082}{Intermediate demand from sector 082 (numeric)}
#'   \item{083}{Intermediate demand from sector 083 (numeric)}
#'   \item{084}{Intermediate demand from sector 084 (numeric)}
#'   \item{085}{Intermediate demand from sector 085 (numeric)}
#'   \item{086}{Intermediate demand from sector 086 (numeric)}
#'   \item{087}{Intermediate demand from sector 087 (numeric)}
#'   \item{088}{Intermediate demand from sector 088 (numeric)}
#'   \item{089}{Intermediate demand from sector 089 (numeric)}
#'   \item{090}{Intermediate demand from sector 090 (numeric)}
#'   \item{091}{Intermediate demand from sector 091 (numeric)}
#'   \item{092}{Intermediate demand from sector 092 (numeric)}
#'   \item{093}{Intermediate demand from sector 093 (numeric)}
#'   \item{094}{Intermediate demand from sector 094 (numeric)}
#'   \item{095}{Intermediate demand from sector 095 (numeric)}
#'   \item{096}{Intermediate demand from sector 096 (numeric)}
#'   \item{097}{Intermediate demand from sector 097 (numeric)}
#'   \item{098}{Intermediate demand from sector 098 (numeric)}
#'   \item{099}{Intermediate demand from sector 099 (numeric)}
#'   \item{100}{Intermediate demand from sector 100 (numeric)}
#'   \item{101}{Intermediate demand from sector 101 (numeric)}
#'   \item{102}{Intermediate demand from sector 102 (numeric)}
#'   \item{103}{Intermediate demand from sector 103 (numeric)}
#'   \item{104}{Intermediate demand from sector 104 (numeric)}
#'   \item{105}{Intermediate demand from sector 105 (numeric)}
#'   \item{106}{Intermediate demand from sector 106 (numeric)}
#'   \item{107}{Intermediate demand from sector 107 (numeric)}
#'   \item{108}{Intermediate demand from sector 108 (numeric)}
#'   \item{109}{Intermediate demand from sector 109 (numeric)}
#'   \item{110}{Intermediate demand from sector 110 (numeric)}
#'   \item{111}{Intermediate demand from sector 111 (numeric)}
#'   \item{112}{Intermediate demand from sector 112 (numeric)}
#'   \item{113}{Intermediate demand from sector 113 (numeric)}
#'   \item{114}{Intermediate demand from sector 114 (numeric)}
#'   \item{115}{Intermediate demand from sector 115 (numeric)}
#'   \item{116}{Intermediate demand from sector 116 (numeric)}
#'   \item{117}{Intermediate demand from sector 117 (numeric)}
#'   \item{118}{Intermediate demand from sector 118 (numeric)}
#'   \item{119}{Intermediate demand from sector 119 (numeric)}
#'   \item{120}{Intermediate demand from sector 120 (numeric)}
#'   \item{121}{Intermediate demand from sector 121 (numeric)}
#'   \item{122}{Intermediate demand from sector 122 (numeric)}
#'   \item{123}{Intermediate demand from sector 123 (numeric)}
#'   \item{124}{Intermediate demand from sector 124 (numeric)}
#'   \item{125}{Intermediate demand from sector 125 (numeric)}
#'   \item{126}{Intermediate demand from sector 126 (numeric)}
#'   \item{127}{Intermediate demand from sector 127 (numeric)}
#'   \item{128}{Intermediate demand from sector 128 (numeric)}
#'   \item{129}{Intermediate demand from sector 129 (numeric)}
#'   \item{130}{Intermediate demand from sector 130 (numeric)}
#'   \item{131}{Intermediate demand from sector 131 (numeric)}
#'   \item{132}{Intermediate demand from sector 132 (numeric)}
#'   \item{133}{Intermediate demand from sector 133 (numeric)}
#'   \item{134}{Intermediate demand from sector 134 (numeric)}
#'   \item{135}{Intermediate demand from sector 135 (numeric)}
#'   \item{TIU}{Total intermediate use (numeric)}
#'   \item{FU101}{Final use category 101 (numeric)}
#'   \item{FU102}{Final use category 102 (numeric)}
#'   \item{THC}{Household consumption (numeric)}
#'   \item{FU103}{Final use category 103 (numeric)}
#'   \item{TC}{Total consumption (numeric)}
#'   \item{FU201}{Final use category 201 (numeric)}
#'   \item{FU202}{Final use category 202 (numeric)}
#'   \item{GCF}{Gross capital formation (numeric)}
#'   \item{EX}{Exports (numeric)}
#'   \item{TFU}{Total final use (numeric)}
#'   \item{IM}{Imports (numeric)}
#'   \item{ERR}{Statistical discrepancy (numeric)}
#'   \item{GO}{Gross output (numeric)}
#' }
#' @source Data taken from the ionet package version 0.2.2
#' @usage data(china_io_2007_135_df)
#' @export
load("data/china_io_2007_135_df.rda")
NULL

#' List of Prominent Chinese Cities
#'
#' This dataset, chinese_cities_tbl_df, is a tibble that contains information about 367 prominent cities in China.
#' Each row represents a city and includes geographic coordinates (latitude and longitude), administrative information,
#' and population data. The dataset is a tibble (special type of data frame) that preserves the original structure
#' from its source simplemaps.
#'
#' The dataset name has been kept as 'chinese_cities_tbl_df' to maintain consistency with the naming conventions
#' in the ChinAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name chinese_cities_tbl_df
#' @format A tibble with 367 observations and 9 variables:
#' \describe{
#' \item{city}{City name in English (character)}
#' \item{lat}{Latitude coordinate (numeric)}
#' \item{lng}{Longitude coordinate (numeric)}
#' \item{country}{Country name (always "China" in this dataset) (character)}
#' \item{iso2}{2-letter country code (always "CN" in this dataset) (character)}
#' \item{admin_name}{Administrative division name (province or equivalent) (character)}
#' \item{capital}{Administrative capital status (character)}
#' \item{population}{City population estimate (numeric)}
#' \item{population_proper}{City proper population estimate (numeric)}
#' }
#' @source Data obtained from simplemaps: \url{https://simplemaps.com/data/cn-cities}
#' @usage data(chinese_cities_tbl_df)
#' @export
load("data/chinese_cities_tbl_df.rda")
NULL


#' Chinese Dams Dataset
#'
#' This dataset, chinese_dams_tbl_df, is a tibble containing information about 158 dams in China.
#' Each row represents a dam and includes location details, physical characteristics, and completion information.
#' The dataset preserves the original structure from its source Kaggle.
#'
#' The dataset name has been kept as 'chinese_dams_tbl_df' to maintain consistency with the naming conventions
#' in the ChinAPIs package. The suffix 'tbl_df' indicates that this is a tibble data frame. The original content
#' has not been modified in any way.
#'
#' @name chinese_dams_tbl_df
#' @format A tibble with 158 observations and 8 variables:
#' \describe{
#' \item{Name}{Name of the dam (character)}
#' \item{Province}{Primary province where the dam is located (character)}
#' \item{Second Province}{Additional province if dam spans multiple regions (character)}
#' \item{Impounds}{River or water body the dam impounds (character)}
#' \item{Height}{Height of the dam in meters (numeric)}
#' \item{Type}{Type of dam (e.g., "Arch-gravity", "Embankment") (character)}
#' \item{Complete}{Year of completion (character)}
#' \item{Storage capacity (million m3)}{Water storage capacity in million cubic meters (numeric)}
#' }
#' @source Data obtained from Kaggle: \url{https://www.kaggle.com/datasets/alexandrepetit881234/chinese-dams}
#' @usage data(chinese_dams_tbl_df)
#' @export
load("data/chinese_dams_tbl_df.rda")
NULL


