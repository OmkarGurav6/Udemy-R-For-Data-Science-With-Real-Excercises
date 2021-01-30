
#facets
j <- ggplot(data = movies, aes(x = BudgetMillions))

j + geom_histogram(binwidth = 10, aes(fill=Genre), colour= "Black") +
  facet_grid(Genre~., scales = "free")


k <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating,
                               colour = Genre)) 

k + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year) +
   geom_smooth(fill=NA) 

# zooming
k + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year) +
  geom_smooth(fill=NA)  + coord_cartesian(ylim = c(0,100))
