library(tidyverse)
library(ggridges)
library(ggjoy)

spotify_df <- readr::read_rds('data/spotify_df.rds')

# VALENCE

## “A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence 
## sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. 
## sad, depressed, angry).”

spotify_df %>% 
  group_by(album_name) %>% 
  summarise(mean(valence)) %>% 
  arrange(desc(`mean(valence)`))

ggplot(spotify_df, aes(x = valence, y = album_name)) + 
  geom_joy(fill = "#e64173", alpha = 0.4) + 
  theme_joy() +
  xlab("Valence") +
  ylab("Nombre del álbum") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "Lover") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("Lover - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "reputation") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("Lover - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "1989") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("1989 - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "Red") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("Red - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "Speak Now") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("Speak Now - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

spotify_df %>% 
  filter(album_name == "Fearless") %>% 
  ggplot(aes(x = valence, y = reorder(track_name, valence))) + 
  geom_point(color = "#e64173") + 
  theme_joy() +
  xlab("Valence") +
  ylab("Fearless - Nombre de la canción") +
  ggtitle("Joyplot of Taylor Swift's joy distributions", 
          subtitle = "Based on valence pulled from Spotify's Web API with spotifyr")

