
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output, session) {
  bookChoices = c("Non-fiction","Non-fiction/Technical","Technical","Reference","Fiction")
  updateSelectizeInput(session, 'types', choices = bookChoices, server = TRUE,
      options = list(placeholder = 'select a book type')
        
  )
  
  selectedData<-reactive({
    rx = as.data.frame(input$types)
  })
  
  output$table = renderTable({
    
    #rb1 = rb[which(rb$Type == 'T'),]
    #rb1[order(-rb1$Votes),]
    ol = as.data.frame(input$types)
    if(nrow(ol)>0){
      ol = merge(ol,bkTypes,by.x="input$types",by.y="longType")
      rb1 = rb[which(rb$Type %in% ol$shortType),]
      rb1 = rb1[order(-rb1$Votes),c("Title","Author","Votes")]
    }else{
      ol
    }
      
    
    #as.data.frame(merge(input$types,bkTypes,by.y="longType",all.y=F))
  },include.rownames=F)

  
})
