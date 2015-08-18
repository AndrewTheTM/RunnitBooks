
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
    #choices = c("Non-fiction","Non-fiction/Technical","Technical","Reference","Fiction")
    selectizeInput("types", 
       "Book Types", 
       choices = NULL,
       
    #   c("Non-fiction","Non-fiction/Technical","Technical","Reference","Fiction"), 
       NULL, TRUE, NULL)
    ),
  # Show a plot of the generated distribution
  mainPanel(
    #plotOutput("distPlot")
  )
))
