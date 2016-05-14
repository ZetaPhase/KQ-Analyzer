#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(jsonlite)
library(base64enc)
library(RCurl)
library(DiagrammeR)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  source("config.R")
  domain <- "https://apps.zetaphase.io/kq/admin/api.php?apikey="
  url <- paste(domain, api_key, sep="")
  document <- fromJSON(txt=url)
  data <- document[["rawData"]]
  
  output$idPlot <- renderPlot({
    # generate data table from id section in data
    idData <- table(data[["id"]])
    
    # plot barchart based on idData
    op <- par(mar = c(10,4,4,2) + 0.1)
    barplot(idData, las=2, ylab = "Frequency", main = "Visit Count")
    par(op)
  })
  
  output$urlPlot <- renderPlot({
    # generate data table from url section in data
    urlData <- table(data[["url"]])
    
    # plot barchart based on urlData
    op <- par(mar = c(10,4,4,2) + 0.1)
    barplot(urlData, las=2)
    par(op)
  })
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
})
