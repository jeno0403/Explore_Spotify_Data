#### Preamble ####
# Purpose: Download and analyze audio features of NIKI's songs using Spotify API.
# Author: Group 56
# Date: October 10, 2024
# Contact: Group 56
# License: MIT
# Pre-requisites: Spotify API credentials in your `.Renviron` file

#### Workspace setup ###
#install.packages("devtools")
#devtools::install_github('charlie86/spotifyr')
library(spotifyr)
library(usethis)
edit_r_environ()

#### Download data ####
NIKI <- get_artist_audio_features("NIKI")
#### Save data ####
saveRDS(NIKI,"data/00-raw_data/niki.rds")

