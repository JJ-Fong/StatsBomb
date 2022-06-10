
library(tidyverse) 
library(StatsBombR) 
Comp <- FreeCompetitions() %>% filter(competition_id==11 & season_name=="2019/2020") 
Matches <- FreeMatches(Comp) 
StatsBombData <- StatsBombR::free_allevents(MatchesDF = Matches, Parallel = T) 
StatsBombData = allclean(StatsBombData) 
events = StatsBombData


