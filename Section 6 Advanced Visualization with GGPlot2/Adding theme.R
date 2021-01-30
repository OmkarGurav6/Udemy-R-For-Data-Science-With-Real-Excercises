
o <- ggplot(data = movies, aes(x = BudgetMillions))
h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour= "Black")

h

h + xlab("Money") + ylab("Number of movies") +
  ggtitle("Movie budget distribution") +
  theme(axis.title.x = element_text(colour="DarkBlue",size=30),
        axis.title.y = element_text(colour="DarkBlue",size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(colour="Red",
                                  size=40)) 

        