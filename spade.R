# install.packages("arules")
# install.packages("arulesSequences")

# setwd();
# source("C:/SPADE/spade.R")

library(Matrix)
library(arules)
library(arulesSequences)

x <- read_baskets(con  = "delicious.sequence.txt",info = c("sequenceID","eventID","SIZE"))
s1 <- cspade(x, parameter = list(support = 0.001), control = list(verbose = TRUE))

summary(s1)

as(s1, "data.frame")

