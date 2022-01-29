library(shiny)
library(ggplot2)

shinyUI(fluidPage(

    titlePanel("Graphing Iris"),

    sidebarLayout(
        sidebarPanel(
            h3("Choose the X and Y axes"),
            selectInput("valorX", "Choose X", names(iris)) ,
            selectInput("valorY", "Choose Y", names(iris)) ,
            checkboxInput("colour", "Colour by specie", TRUE)
        ),

        mainPanel(
            h2("Iris interactive plot"),
            plotOutput("plot1"),
            "iris is a data frame with 150 cases (rows) and the latter 5 variables (columns). This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica."
        )
    )
))
