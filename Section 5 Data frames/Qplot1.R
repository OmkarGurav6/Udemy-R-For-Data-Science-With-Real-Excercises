

qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate,size=I(3),
      colour=I("red"))


qplot(data=stats,x=Internet.users,y=Birth.rate)
qplot(data=stats,x=Internet.users,y=Birth.rate,
      size=I(4),colour=I("violet"))
qplot(data=stats,x=Internet.users,y=Birth.rate,
      size=I(5),colour=Income.Group)

