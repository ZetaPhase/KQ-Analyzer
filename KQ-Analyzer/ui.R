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
  navbarPage("KQ-Analyzer",
             tabPanel(
               "Component 1",
               sidebarLayout(
                 sidebarPanel(
                   selectizeInput(
                     'id', label="Year", choices=NULL, multiple=F, selected="X2015",
                     options = list(create = TRUE,placeholder = 'Choose the year')
                   ),
                   # Make a list of checkboxes
                   radioButtons("radio", label = h3("Radio buttons"),
                                choices = list("Choice 1" = 1, "Choice 2" = 2)
                   )
                 ),
                 mainPanel( plotOutput("distPlot") )
               )
             ),
             tabPanel("Component 2"),
             tabPanel("Component 3")
  )
)
