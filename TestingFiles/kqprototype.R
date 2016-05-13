library(jsonlite)
domain <- "https://apps.zetaphase.io/kq/admin/api.php?apikey="
url <- paste(domain, api_key, sep="")
document <- fromJSON(txt=url)
data <- document[["rawData"]]
idData <- table(data[["id"]])
urlData <- table(data[["url"]])
timestampData <- table(data[["timestamp"]])
b64Data <- table(data[["b64extradata"]])
barplot(idData)