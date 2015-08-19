
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Runnit Books"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    selectizeInput("types", 
       "Book Types", 
       choices = NULL,
       NULL, TRUE, NULL)
    ),
  # Show a plot of the generated distribution
  mainPanel(
    tableOutput("table")
    #plotOutput("distPlot")
  )
))
