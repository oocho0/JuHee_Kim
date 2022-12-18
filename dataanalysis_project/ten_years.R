#install.packages('extrafont')
library('dplyr')
library(datasets)
library(extrafont)
library(ggplot2)

par(family='AppleGothic')
par(mfrow=c(2,3),mar=c(3,3,4,2))

raw_data <- read.csv('data/pop_12_21.csv')
head(raw_data)

locals1 = c('임실군', '순창군', '울릉군')
locals2 = c('장흥군','강진군','고령군')
locals3 = c('보성군', '신안군','하동군','합천군')
locals4 = c('고창군', '부안군','해남군')

pop_guide1 = c(5000, 35000)
pop_guide2 = c(25000, 55000)
pop_guide3 = c(35000, 65000)
pop_guide4 = c(50000, 80000)


for (local in locals1){
  target<-c(local)
  year_pick <- filter(raw_data,region==local)
  year_pop <- year_pick[1,2:11]
  years <- 2012:2021
  plot(years,year_pop,
      main= local,
      ylim = pop_guide1,
      type='b', lty=1, col='red',
      xlab='연도', ylab='인구수',
)
  }

for (local in locals2){
  target<-c(local)
  year_pick <- filter(raw_data,region==local)
  year_pop <- year_pick[1,2:11]
  years <- 2012:2021
  plot(years,year_pop,
       main= local,
       ylim = pop_guide2,
       type='b', lty=1, col='red',
       xlab='연도', ylab='인구수',
  )
}

for (local in locals4){
  target<-c(local)
  year_pick <- filter(raw_data,region==local)
  year_pop <- year_pick[1,2:11]
  years <- 2012:2021
  plot(years,year_pop,
       main= local,
       ylim = pop_guide4,
       type='b', lty=1, col='red',
       xlab='연도', ylab='인구수',
  )
}


for (local in locals3){
  target<-c(local)
  year_pick <- filter(raw_data,region==local)
  year_pop <- year_pick[1,2:11]
  years <- 2012:2021
  plot(years,year_pop,
       main= local,
       ylim = pop_guide3,
       type='b', lty=1, col='red',
       xlab='연도', ylab='인구수',
  )
}


