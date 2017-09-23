library(ggplot2)

movies <- read.csv("douban_movie_clean.txt", sep = "^", header = TRUE)

ggplot(movies) + geom_bar(aes(x=rate))
