library(jsonlite)
api_key <- "ab8fEq6hD2tA39BwHeUU483cuNDm4taDNhK9Wtfc"
domain <- "https://apps.zetaphase.io/kq/admin/api.php?apikey="
url <- paste(domain, api_key, sep="")
document <- fromJSON(txt=url)
data <- document[["rawData"]]