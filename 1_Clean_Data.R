penguins
penguins_data<-penguins
write.csv(penguins_data,"C:/Users/User/OneDrive/Desktop/Penguin Project/Data/Penguin_Data.csv")

# install and load "tidyverse"
install.packages("tidyverse")
library(tidyverse)

# read in the data
penguins<-read.table("penguin_data.txt", header=T)
glimpse(penguins)

# run a linear regression
model1<-lm(body_mass_g ~ flipper_length_mm,data=penguins)
summary(model1)

# create a plot in ggplot2
ggplot(penguins,aes(x=flipper_length_mm, y=body_mass_g,colour=species))+
geom_point()+
stat_smooth(method="lm")

# save the plot into the figs folder
ggsave("figs/1_flipper_bodymass_regression.png")

# subset the data
penguins_female<-subset(penguins,sex=="female")
