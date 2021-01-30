

u <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating,
                              colour = Genre))

u + geom_point() + geom_smooth(fill=NA)

#boxplot
u <- ggplot(data = movies, aes(x = Genre, y = AudienceRating,
                               colour = Genre))
u + geom_boxplot()

#jitter with boxplot is powerful combination.
u <- ggplot(data = movies, aes(x = Genre, y = AudienceRating,
                               colour = Genre))
u + geom_boxplot(size=1.2) + geom_jitter()

#Another way
u + geom_jitter() + geom_boxplot(size=1.2,alpha = 0.4)

#CriticRating
b <- ggplot(data = movies, aes(x = Genre, y = CriticRating,
                               colour = Genre))
b + geom_jitter() + geom_boxplot(size=1.2,alpha = 0.5)

