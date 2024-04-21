#Exercise 7
library(tidyverse)
setwd('/Users/kelliehaddon/Documents/Fall 2022/SIS 600 (stats)/Data')

qog<-read_csv('qog_bas_cs_jan22.csv')
view(qog)

#Descriptive Statistics
  #Sustainability
summary(qog$bti_su)

summarize(qog,
          mean(bti_su, na.rm=T),
          sd(bti_su,na.rm=T))

ggplot(qog,aes(bti_su))+
  geom_histogram(bins=10,
                 color='black',
                 aes(fill=..x..),
                 show.legend = F)+
  scale_fill_gradient2(low='darkseagreen4',
                       mid='white',
                       high='darkseagreen4',
                       midpoint=4.64)+
  labs(title='Sustainability Score Distribution',
       x='Sustainability',
       y='Count')+
  theme_classic()

ggsave('sustainability.png', height=5, width=5)

  #Healthy Life Expectancy
summary(qog$who_halet)

summarize(qog,
          mean(who_halet, na.rm=T),
          sd(who_halet,na.rm=T))

ggplot(qog,aes(who_halet))+
  geom_histogram(bins=15,
                 color='black',
                 aes(fill=..x..),
                 show.legend = F)+
  scale_fill_gradient2(low='darkslategray',
                       mid='white',
                       high='darkslategray',
                       midpoint=63.32)+
  labs(title='Healthy Life Expectancy Distribution',
       x='Healthy Life Expectancy (years)',
       y='Count')+
  theme_classic()

ggsave('healthylifeexpectancy.png', height=5, width=5)

#Linear Regression Model
lm(who_halet~bti_su,qog)%>%
  summary()

lm(who_halet~bti_su,qog)%>%
  nobs()

#Visualization
ggplot(qog,aes(bti_su,who_halet))+
  geom_jitter(alpha=.7, size=3, color='darkseagreen3')+
  geom_smooth(method=lm,se=F, color='darkslategray')+
  labs(x='Sustainability',
       y='Healthy Life Expectancy (Years)',
       title='Correlation Between Sustainability and Healthy Life Expectancy')+
  theme_classic()

ggsave('sus_hle.png', width=6, height=6)
