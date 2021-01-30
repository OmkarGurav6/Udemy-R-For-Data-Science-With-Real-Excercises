
qplot(data=merged,x=Internet.users,y=Birth.rate,
      size=I(5),colour=Region, shape=I(19),alpha=I(0.6),
      main = "Birth Rate vs Internet Users")

qplot(data=movies,x=CriticRating, y=AudienceRating,
      size=BudgetMillions,colour=I("Dark Green"), shape=I(20),
      main = "Audience Rating vs Critic Rating")
