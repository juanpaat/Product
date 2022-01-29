library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
    
    output$plot1<-renderPlot({
        dataset<-data(iris)

        valorX<-iris[,input$valorX]
        valorY<-iris[,input$valorY]
    
        if (input$colour){
        ggplot(data = iris, aes(x = valorX, y = valorY))+
            geom_jitter(aes(colour = Species), size = 3,alpha = 0.5)+
                theme(legend.position = "none")+ 
                ggtitle("Iris") +
                xlab(input$valorX) + ylab(input$valorY)
        } else{
            ggplot(data = iris, aes(x = valorX, y = valorY))+
                geom_jitter( size = 3,alpha = 0.5)+ 
                ggtitle("Iris") +
                xlab(input$valorX) + ylab(input$valorY)
            
        }
        })

}
)












