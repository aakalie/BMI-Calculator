library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index (BMI) Calculator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("mass", label = strong("Enter your weight in pounds (lb)"),min = 50, max = 500,0), 
      br(),
      numericInput("height", label = strong("Enter your height in inches (in)"),min = 10, max = 90,0),
      br(),
      actionButton("YourBMI", label = "Submit")),
    
    mainPanel(
      tabsetPanel(
        tabPanel("BMI Calculation Result",
                 p(h3("Your Measurnment:")),
                 textOutput("current_weight"),
                 textOutput("current_height"),
                 br(),
                 p(h3("Your BMI is:")),
                 textOutput("BMI_result"),
                 p(h3("This result shows that you are:")),
                 textOutput("indicator_show")),
        
      )))
))
