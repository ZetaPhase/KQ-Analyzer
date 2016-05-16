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
                   ),
                   actionButton("go", "Go")
                 ),
                 mainPanel(
                   h3(tags$p("Welcome to KQ Analyzer")),
                   htmlOutput("home"),
                   h3(tags$p("Links")),
                   tags$a(href="https://github.com/ZetaPhase/KQAnalytics/blob/master/README.md#quick-start", "Instructions to KQ Analytics"),
                   tags$br(),
                   tags$a(href="https://zetaphase.io/", "Visit our webpage"),
                   tags$br(),
                   tags$a(href="https://github.com/ZetaPhase", "Visit our Github page")
                 )
               )
             ),
             navbarMenu(
               "ID Data",
               tabPanel(
                 "Bar Plot",
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
                   mainPanel( plotOutput("idBarPlot"))
                 )
               ),
               tabPanel(
                 "Pie Chart",
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
                   mainPanel( plotOutput("idPieChart"))
                 )
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
                 mainPanel( plotOutput("urlBarPlot"),
                            plotOutput("urlPieChart"))
               )
             ),
             tabPanel("Timestamp Data"),
             tabPanel(
               "b64extra Data",
               tags$textarea(id="b64", rows=3, cols=40, "Default value")
             )
  )
)