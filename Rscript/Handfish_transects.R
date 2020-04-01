#01/04/2020 Felicity
#Handfish transect data analysis

library(tidyverse)

Historic_spotted <- read_csv("data/Historic_spotted.csv")
Historic_spotted

view(Historic_spotted)
head(Historic_spotted)
tail(Historic_spotted)
glimpse(Historic_spotted)


#tidy historic dataset rename variables and fix numbers to numeric
#filter(On_transect == "Y")

TidyPre2010 <- Historic_spotted %>% 
                        rename("Sample_date" = "Sample Date", "Transect_No" = "Transect #", 
                                        "Transect_length" = "Transect L", "Transect_width" = "Transect W", 
                                        "Fish_count" = "n (fish)", "On_transect" = "On Transect", 
                                        "Fish_total_length" = "Fish TL's") %>% 
                        mutate(Fish_count = as.numeric(Fish_count), Fish_total_length = as.numeric(Fish_total_length)) %>% 
                        
 
  
view(TidyPre2010)

#count stations
by_stations <- TidyPre2010 %>% 
                summarise(Location) # there is eleven locations

TidyPre2010$Location
