
#2 methods to import data in R
#method 1: Select the file manually
stats <- read.csv(file.choose())

#method 2: set WD and Read Data
setwd("C:/Users/DELL/Desktop/Udemy R")
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")

