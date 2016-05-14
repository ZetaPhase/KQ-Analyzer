#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage("KQ Analyzer",
             tabPanel(
               "Home",
               sidebarLayout(
                 sidebarPanel(
                   textInput(
                     inputId = "url",
                     label = NULL,
                     value = "",
                     width = "400px",
                     placeholder = "Please enter the KQ Analytics installation root URL"
                   ),
                   textInput(
                     inputId = "apiKey",
                     label = NULL,
                     value = "",
                     width = "400px",
                     placeholder = "Please enter your API key for KQ Analytics"
                   )
                 ),
                 mainPanel(
                   h3(textOutput("title")),
                   htmlOutput("home"),
                   tags$a(href="https://github.com/ZetaPhase/KQAnalytics/blob/master/README.md#quick-start", "Instructioins to KQ Analytics"),
                   tags$br(),
                   tags$a(href="https://zetaphase.io/", "Visit our webpage"),
                   tags$br(),
                   tags$a(href="https://github.com/ZetaPhase", "Visit our Github page")
                 )
               )
             ),
             tabPanel(
               "ID Data",
               sidebarLayout(
                 sidebarPanel(
                   textInput(
                     inputId = "url",
                     label = NULL,
                     value = "",
                     width = "400px",
                     placeholder = "Please enter the KQ Analytics installation root UR"
                   ),
                   selectizeInput(
                     'id', label="Year", choices=NULL, multiple=F, selected="X2015",
                     options = list(create = TRUE,placeholder = 'Choose the year')
                   ),
                   # Make a list of checkboxes
                   radioButtons("radio", label = h3("Radio buttons"),
                                choices = list("Choice 1" = 1, "Choice 2" = 2)
                   )
                 ),
                 mainPanel( plotOutput("idPlot") )
               )
             ),
             tabPanel(
               "URL Data",
               sidebarLayout(
                 sidebarPanel(
                   textInput(
                     inputId = "url",
                     label = NULL,
                     value = "",
                     width = "400px",
                     placeholder = "Please enter the KQ Analytics installation root UR"
                   )
                 ),
                 mainPanel( plotOutput("urlPlot") )
               )
             ),
             tabPanel("Timestamp Data"),
             tabPanel(
               "b64extra Data",
               tags$textarea(id="b64", rows=3, cols=40, "Default value")
             )
  )
)