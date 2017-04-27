#server
library(shiny)
library(ggplot2)
require(pairsD3)


shinyServer(function(input, output) {
        dataset <- reactive({
                full_w_cot[full_w_cot$year==input$year,]
        })
        
        output$scatterplot <- renderPairsD3({
                pairsD3(df[,],group=df[,1],leftmar = 100)
        })

        output$heatmap <- renderD3heatmap({
                d3heatmap(
                        scale(df %>% dplyr::select(-Category) %>% slice(1:300)),
                        colors = "RdYlBu"
                )
        })
        
        output$parallel <- renderPlotly({
                df %>%
                        plot_ly(type = 'parcoords',
                                line = list(color = ~Category,
                                            colorscale = list(c(0,'red'),c(0.5,'green'),c(1,'blue'))),
                                dimensions = list(
                                        list(range = c(238,180480),
                                             label = 'Lifetime Post Total Reach', values = ~Lifetime.Post.Total.Reach),
                                        list(range = c(9,19779),
                                             label = 'Total Interactions', values = ~Total.Interactions),
                                        list(range = c(0,6334),
                                             label = 'Lifetime Post Consumptions', values = ~Lifetime.Post.Consumptions)
                                )
                        )
                

        })
})