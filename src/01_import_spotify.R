library(tidyverse)
library(spotifyr)

source('token.R')

# (!) REVISAR, a algunos álbumes le faltan las tres canciones finales:
############# (i) Fearless
############# (ii) Speak Now
############# (iii) Red
############# (iv) 1989

spotify_df <- get_artist_audio_features('taylor swift') %>% 
  filter(album_name != "1989 (Big Machine Radio Release Special)") %>% 
  filter(album_name != "Fearless (Big Machine Radio Release Special)") %>% 
  filter(album_name != "Fearless Karaoke") %>% 
  filter(album_name != "Fearless Platinum Edition") %>% 
  filter(album_name != "Red (Big Machine Radio Release Special)") %>% 
  filter(album_name != "reputation (Big Machine Radio Release Special)") %>% 
  filter(album_name != "reputation Stadium Tour Surprise Song Playlist") %>% 
  filter(album_name != "Speak Now (Big Machine Radio Release Special)") %>% 
  filter(album_name != "Speak Now World Tour Live") %>% 
  filter(album_name != "Fearless Platinum Edition") %>% 
  filter(album_name != "Taylor Swift (Big Machine Radio Release Special)") %>% 
  filter(album_name != "Taylor Swift Karaoke") %>% 
  filter(album_name != "Taylor Swift Karaoke: 1989") %>% 
  filter(album_name != "Taylor Swift Karaoke: Red") %>% 
  filter(album_name != "Taylor Swift Karaoke: Speak Now") %>% 
  filter(track_name != "22 - Karaoke Version") %>%                                  
  filter(track_name != "All Too Well - Karaoke Version") %>%                           
  filter(track_name != "Begin Again - Karaoke Version") %>%                             
  filter(track_name != "Everything Has Changed - Karaoke Version") %>%                  
  filter(track_name != "Holy Ground - Karaoke Version") %>%                             
  filter(track_name != "I Almost Do - Karaoke Version") %>%                             
  filter(track_name != "I Knew You Were Trouble. - Karaoke Version") %>%                
  filter(track_name != "Love Story - J Stax Radio Mix") %>%                             
  filter(track_name != "Mine - POP Mix") %>%                                            
  filter(track_name != "Red - Karaoke Version") %>%                                     
  filter(track_name != "Sad Beautiful Tragic - Karaoke Version") %>%                    
  filter(track_name != "Starlight - Karaoke Version") %>%                               
  filter(track_name != "State Of Grace - Karaoke Version") %>%                          
  filter(track_name != "Stay Stay Stay - Karaoke Version") %>%                          
  filter(track_name != "The Last Time - Karaoke Version") %>%                           
  filter(track_name != "The Lucky One - Karaoke Version") %>%                           
  filter(track_name != "Treacherous - Karaoke Version") %>%                             
  filter(track_name != "We Are Never Ever Getting Back Together - Karaoke Version") %>%
  filter(track_name != "Teardrops on My Guitar - Pop Version") %>% 
  filter(available_markets != "JP") %>% 
  filter(album_id != "4uUAUqIfSomFTbbjGp3TYp") %>% 
  filter(album_id != "5fy0X0JmZRZnVa2UEicIOl") %>% 
  filter(album_id != "6Ar2o9KCqcyYF9J0aQP3au") %>% 
  filter(album_id != "3Mvk2LKxfhc2KVSnDYC40I") %>% 
  filter(album_id != "2dqn5yOQWdyGwOpOIi9O4x") %>% 
  filter(album_id != "1rwH2628RIOVM3WMwwO418") %>% 
  filter(album_id != "5eyZZoQEFQWRHkV2xgAeBw") 

readr::write_rds(spotify_df, 'data/spotify_df.rds')

