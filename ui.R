#ui
shinyUI(fluidPage(
        titlePanel("Multivariate Visualizations"),
                
                        tabsetPanel(
                                tabPanel("Scatterplot Matrix", pairsD3Output("scatterplot",
                                width="100%",height="800px"))
                                ,
                                tabPanel("Heatmap",  d3heatmapOutput("heatmap", width = "100%", height = "800px"))
                                ,
                                tabPanel("Parallel Coords",plotlyOutput('parallel', width = 950)) 
                )
))