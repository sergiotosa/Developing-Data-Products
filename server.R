library(shiny)
library(datasets)

shinyServer(function(input, output) {
  output$out1<-renderPrint({input$text})
  output$out2<-renderPrint({input$radio})
  output$out3<-reactive({
  salida<-""
  if (input$radio=="Encrypt"){z<-input$num} else {z<--input$num}
  for (i in 1:nchar(input$text)){
    letin<-substr(input$text,i,i)
    letout<-intToUtf8(utf8ToInt(letin)+z)
    if (letin==" "){letout=" "}
    salida<-paste(salida,letout,sep="")
  }
  salida
  })
  }
)