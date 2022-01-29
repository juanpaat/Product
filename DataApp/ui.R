# load required libraries
library(shiny)
library(maps)
library(mapdata)
library(ggplot2)

data("iris")
# Define UI for application
shinyUI(fluidPage(

    titlePanel("Select the variables"),

    sidebarLayout(
        sidebarPanel(
            "Select the variables to compare",
            selectInput("Xaxis", "Select X", names(iris)),
            selectInput("Yaxis", "Select Y", names(iris))
        
      )),
      # Show the plot
      mainPanel(
        h3("Graph")
      )
    )
)

