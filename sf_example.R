library(tidyverse)
library(sf)
library(leaflet)
library(tmap)

nasa_fire <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-07/MODIS_C6_Australia_and_New_Zealand_7d.csv')

nasa_sf <- nasa_fire %>%
  st_as_sf(coords = c("longitude","latitude"))

ggplot(nasa_sf) +
  geom_sf(aes(color = brightness))

tmap_mode("view")
tm_shape(nasa_sf) +
  tm_dots("brightness")





