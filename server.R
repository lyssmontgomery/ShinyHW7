# server.R

source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      myRange<-input$range
      
      if(input$var == "Percent White"){
        percent_map(counties$white, "violet", input$var, input$range[1], input$range[2])
      }
      else if(input$var == "Percent Black"){
        percent_map(counties$black, "darkcyan", input$var, input$range[1], input$range[2])
      }
      else if(input$var == "Percent Hispanic"){
        percent_map(counties$hispanic, "darkgreen", input$var, input$range[1], input$range[2])
      }
      else if(input$var == "Percent Asian"){
        percent_map(counties$asian, "black", input$var, input$range[1], input$range[2])
      }
     
    })
      
  }
)
    