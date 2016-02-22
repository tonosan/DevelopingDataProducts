library(shiny)
bmi<- function(wght,hght) wght/hght^2*703

shinyServer( 
        function(input,output) { 
          output$BMI<- renderPrint({round(bmi(input$wght,input$hght),2)})
          output$levelbar<- renderPlot({plot(35.1,1,xlim=c(0,50),ylim = c(0,1), 
                                           type = "n", xaxt="n",yaxt="n",
                                           ylab = "",xlab = "Body Mass Index",
                                           axes = F)
                                        Bmi<- bmi(input$wght,input$hght)
                                        rect(0,0,15,1,col = "red",border = F)
                                        rect(15,0,19,1,col = "yellow",border = F)
                                        rect(19,0,25,1,col = "green",border = F)
                                        rect(25,0,30,1,col = "yellow",border = F)
                                        rect(30,0,50,1,col = "red",border = F)
                                        abline(v= Bmi,lwd=2,col="blue")
                        })
        }
) 
