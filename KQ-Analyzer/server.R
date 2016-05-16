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
library(curl)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  goClicked <- eventReactive(input$go, {
    fromJSON(txt=paste(input$url, "/admin/api.php?apikey=", input$apiKey, sep=""))[["rawData"]]
  })
  
  output$home <- renderUI({
    str1 <- paste("This visual analyzer was built by xeliot and 0xFireball from ZetaPhase Technologies.")
    str2 <- paste("Track your server and get detailed analytics of visitors to your service")
    str3 <- paste("This analyzer requires a functional KQ Analytics installation. You can get instructions in the links below.")
    HTML(paste(str1, str2, str3, sep = '<br/>'))
    
  })
  
  textareaInput <- function(inputID, label, value="", rows=10, columns=80) {
    HTML(paste0('<div class="form-group shiny-input-container">
                <label for="', inputID, '">', label,'</label>
                <textarea id="', inputID, '" rows="', rows,'" cols="', 
                columns,'">', value, '</textarea></div>'))
  }
  
  output$idBarPlot <- renderPlot({
    
    # plot barchart based on idData
    op <- par(mar = c(10,4,4,2) + 0.1)
    barplot(table(goClicked()[["id"]]), las=2, ylab = "Frequency", main = "Visit Count")
    par(op)
  })
  
  output$idPieChart <- renderPlot({
    #plot piechart based on idData
    tmp = table(goClicked()[["id"]])
    pie(tmp, labels=names(tmp), main="Pie Chart of ID Data")
  })
  
  output$urlBarPlot <- renderPlot({

    # plot barchart based on urlData
    op <- par(mar = c(12,4,4,2) + 0.1)
    barplot(table(goClicked()[["url"]]), las=2, ylab="Frequency", main = "Link Count")
    par(op)
  })
  
  output$urlPieChart <- renderPlot({
    #plot piechart based on idData
    tmp = table(goClicked()[["url"]])
    pie(tmp, labels=names(tmp), main="Pie Chart of ID Data")
  })
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'white', border = 'lightgray')
    
  })
  
})
