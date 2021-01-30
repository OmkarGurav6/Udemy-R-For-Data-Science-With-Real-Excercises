
df <- read.csv(file.choose())

head(df)

df$Genre <- factor(df$Genre)
df$Studio <- factor(df$Studio)


colnames(df)

movie <- df[df$Genre == "action" | df$Genre == "adventure" | df$Genre == "animation"| 
             df$Genre == "comedy" | df$Genre == "drama",]

movies <- movie[movie$Studio == "Buena Vista Studios" | movie$Studio == "Fox" | movie$Studio == "Paramount Pictures" | 
                  movie$Studio == "Sony" |movie$Studio == "Universal" | movie$Studio == "WB",]

s <- ggplot(data = movies, aes(x = Genre,y = Gross...US,
                               colour = Studio))

s <- s + geom_jitter(aes(size = Budget...mill.)) + geom_boxplot(colour = "Black",alpha = 0.5,
                                                           outlier.colour = NA) +
  ylab("Gross % US") + ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(colour = "Blue", size = 30),
        axis.title.y = element_text(colour = "Blue", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        plot.title = element_text(size = 40, hjust = 0.5),
        legend.title = element_text(size = 20),
        legend.text  = element_text(size = 20))  
  
s$labels$size <- "Budget $M"
s
