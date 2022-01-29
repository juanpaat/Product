
# load the necessary libraries
library(shiny)
library(ggplot2)
data(iris)

shinyServer(function(input, output) {
    

    Xaxis <- Sepal.Length
    Yaxis <- Sepal.Width
   
    })
    
    output$Plot1 <- renderPlot({
        
        ggplot(data=iris,aes(x=Xaxis,y=Yaxis))+
            geom_point()
    
        })
    