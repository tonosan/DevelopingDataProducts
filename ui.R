library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Body Mass Index Calculator"),
        sidebarPanel(
                h3('BMI'),
                p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
                p('To compute your BMI type your height and weight.'),
                p('Your BMI level appears in the graph and you can check which level correspond you below in the table.'),
                numericInput('hght','Inches',0,max = 100,step = .1),
                numericInput('wght','Pounds',0,max = 1000,step = .1),
                submitButton('Compute')
        ),
        mainPanel(
                h3('Your BMI is'),
                verbatimTextOutput("BMI"),
                h3('Your BMI level is'), 
                plotOutput("levelbar"),
                img(src="table.png",height=250,width=550)
                )
)
)
