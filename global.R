library(dplyr)
library(d3heatmap)
library(parcoords)
require(pairsD3)
library(plotly)
library(tidyr)

df <- read.csv("dataset_Facebook.csv",sep=";") %>% 
        dplyr::select(Category,Lifetime.Post.Total.Reach,
                      Lifetime.Post.Consumptions,Total.Interactions)