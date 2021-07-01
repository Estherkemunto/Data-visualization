library(tidyverse)
data()
BOD
ggplot(BOD,aes(Time,demand))+
geom_point()+
geom_line()
library(tidyverse)
data()
CO2
CO2%>%
  ggplot(aes(conc,uptake,color=Treatment))+
  geom_point()+
  geom_smooth(method = lm,se=F)+
  facet_wrap(~Type)+
  labs(title='Concentration of CO2')+
  theme_bw()
CO2%>%
  ggplot(aes(Treatment,uptake))+
  geom_boxplot()+
  geom_point(alpha=1,aes(size=conc,color=Type))+
  facet_wrap(~Type)
  coord_flip()
