library(httr)
library(jsonlite)


API_URL <-'https://covid19.patria.org.ve/api/v1/summary'

API_URL <-'https://covid19.patria.org.ve/api/v1/timeline'
raw_data <- GET(API_URL)
COVID_list <- fromJSON(rawToChar(raw_data$content), flatten = TRUE)
df <- COVID_list
class(df)
head(df)
