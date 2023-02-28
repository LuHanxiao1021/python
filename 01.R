library(sf)
library(tmap)
library(tidyverse)
library(caret)
library(gbm)
library(GGally)
load("ml.RData")
ls()
properties %>% st_drop_geometry() %>% select_if(is_logical) %>%
  colnames() %>% paste(" - ",.) %>% paste(collapse='\n') %>% cat()
oa %>% st_drop_geometry() %>% select_if(is.numeric) %>%
  ggpairs(lower = list(continuous = wrap("points", alpha = 0.5, size=0.1)))+
  theme(axis.line=element_blank(),
        axis.text=element_blank(),
        axis.ticks=element_blank())