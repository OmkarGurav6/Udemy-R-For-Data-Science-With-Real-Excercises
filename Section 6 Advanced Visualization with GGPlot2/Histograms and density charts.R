

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10, fill="Red")# setting red color

s + geom_histogram(binwidth = 10, aes(fill=Genre), colour= "Black")#color is used to set color of border.


s + geom_density(aes(fill=Genre), position = "stack")


t <- ggplot(data = movies)
t + geom_histogram(binwidth = 10, aes(x= AudienceRating) , 
                   fill="White", colour="Blue")

t + geom_histogram(binwidth = 10, aes(x= CriticRating) , 
                   fill="White", colour="Blue")


