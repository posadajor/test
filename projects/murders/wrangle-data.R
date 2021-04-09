library(tidyverse)
murders<-read_csv("d:/project/projects/murders/data/murder.csv")
murders<-murders%>% mutate(region = factor(region),rate=total/population*10^5)
save(murders,file="d:/project/projects/murders/rda/murder.rda")