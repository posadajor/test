library(tidyverse)
load("d:/project/projects/murders/rda/murder.rda")

murders %>% mutate(abb= reorder(abb, rate))%>%
  ggplot(aes(abb,rate))+
  geom_bar(width=0.5, stat="identity", color="black")+
  coord_flip()

