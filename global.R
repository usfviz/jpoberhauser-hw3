package_check <- require("d3heatmap")
if (package_check == FALSE) {
        install.packages('d3heatmap')
}

package_check <- require("parcoords")
if (package_check == FALSE) {
        install.packages('parcoords')
}

package_check <- require("pairsD3")
if (package_check == FALSE) {
        install.packages('pairsD3')
}


package_check <- require("plotly")
if (package_check == FALSE) {
        install.packages('plotly')
}


library(dplyr)
library(d3heatmap)
library(parcoords)
require(pairsD3)
library(plotly)
library(tidyr)
library(leaflet)

df <- read.csv("dataset_Facebook.csv",sep=";") %>% 
        dplyr::select(Category,Lifetime.Post.Total.Reach,
                      Lifetime.Post.Consumptions,Total.Interactions)