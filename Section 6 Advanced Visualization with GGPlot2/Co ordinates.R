
m <- ggplot(data = movies, aes(x= CriticRating, y = AudienceRating,
                               size = BudgetMillions,
                               colour= Genre))

m + geom_point() + xlim(50,100) + ylim(50,100)


#won't work well always
n <- ggplot(data=movies,aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10,aes(fill=Genre),
                   colour = "Black") + ylim(0,50)
#In this case it actually cuts out data which we don't want.

#Other way to zoom for cases like above
n + geom_histogram(binwidth = 10,aes(fill=Genre),colour = "Black") +
  coord_cartesian(ylim=c(0,50))  

