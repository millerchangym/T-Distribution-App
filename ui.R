shinyUI(
  fluidPage(
    titlePanel("", windowTitle = "Student's-t Distribution"),
    
    h1("The (Central) Student's-t Distribution", align = "center"), 
    
    br(),
    mainPanel(width = 12,
                     "This app is a visualizer to see that the (central) t-distribution asymptotically ",
              "converges to a normal distribution. The t-distribution is the blue curve. The red curve is",
              " the density function of the standard normal distribution with mean 0 and variance 1."),
    br(),
    column("", 
           style = 'padding-top:5px',
           width = 12, 
           sidebarPanel(
      sliderInput("df_blue", "Degrees of Freedom:", 
                min=1, max=50, value=1),
      width = 12
    )),
    
    column("", 
           width = 12,
           plotOutput("plot",
               width = "75%"),
           align = "center")
    
  )
)