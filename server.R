shinyServer(function(input, output)
{ 
  library(ggplot2)
  
  output$plot <- renderPlot({
    ggplot(NULL, aes(x = x)) + 
    stat_function(data = data.frame(x = c(-3, 3)), 
                  fun = dt,
                  args = list(df = input$df_blue),
                  col = "blue") +
      stat_function(data = data.frame(x = c(-3, 3)), 
                    fun = dnorm,
                    col = "red") +
    scale_x_continuous(breaks = seq(from = -3, to = 3, by = 0.5)) + 
    scale_y_continuous(breaks = seq(from = 0, to = 0.5, by = 0.1),
                       limits = c(0, 0.5)) +
    xlab("x") +
    ylab("f(x)") +
    theme(panel.background = element_rect(fill='white'),
          panel.border=element_rect(fill=NA))
  })
  
})