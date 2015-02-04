library(shiny)
# Application for text encripting/decipting text string
shinyUI(pageWithSidebar(
  # Application title
  headerPanel("Encrypting/Decrypting tool"),
  sidebarPanel(
    textInput("text", "Input text"),
    radioButtons("radio", label=h3("Action"),
      choices=list("Encrypt" ="Encrypt",
      "Decrypt" ="Decrypt")),
    numericInput("num","Offset",1,min=1,max=10,step=1),
    submitButton("submit")
  ),
  mainPanel(
    h3("Illustrating Shiny Capabilities"),
    h4("Your text"),
    verbatimTextOutput("out1"),
    h4("Your choice"),
    verbatimTextOutput("out2"),
    h4("Answer"),
    verbatimTextOutput("out3")
  )
))
