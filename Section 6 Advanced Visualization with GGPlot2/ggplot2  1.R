
setwd("C:/Users/DELL/OneDrive/Desktop/Udemy R/Section 6 Advanced Visualization with GGPlot2")
movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions",
                      "Year")

movies$Year <- factor(movies$Year)
movies$Film <- factor(movies$Film)
movies$Genre <- factor(movies$Genre)

library(ggplot2)
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour =Genre, size=BudgetMillions)) 

#overriding aesthetics
p + geom_point(aes(size = CriticRating)) 

p + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions")

#we can use 1.mapping using aesthetics or 2.setting.
#Setting 
p + geom_point() + geom_line(size=1) 

#Setting is easy compared to mapping.
r <-  ggplot(data = movies, aes(x = CriticRating, y = AudienceRating))

r + geom_point(colour="Violet")

