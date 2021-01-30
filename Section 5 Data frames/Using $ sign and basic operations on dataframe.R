
head(stats)
stats[3,3]
stats$Internet.users[2]

stats[1:10,] #In dataframe it will stay as a dataframe while extracting a row.
stats[,1,drop=F] #To get dataframe when we extract column ,we use drop = F parameter as we use in matrix.

stats$Mycal <- stats$Birth.rate * stats$Internet.users #adding new column
head(stats)

stats$abc <- 1:5 #adding new column
head(stats)

stats$abc <- NULL #removing new column
stats$Mycal <- NULL
head(stats)
