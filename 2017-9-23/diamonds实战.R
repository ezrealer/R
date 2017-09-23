library(ggplot2)
library(gcookbook)
diamonds <- diamonds

set.seed(123)
diamonds <- diamonds[sample(nrow(diamonds),1000),]

summary(diamonds)
str(diamonds)

head(diamonds)
ggplot(diamonds,aes(x=carat, y=price)) + geom_point()
ggplot(diamonds,aes(x=carat, y=price,color=color,shape=cut)) + geom_point()

ggplot(diamonds,aes(x=price)) + geom_histogram()
ggplot(diamonds,aes(x=price,fill=cut)) + geom_histogram()
ggplot(diamonds,aes(x=clarity)) + geom_bar()
ggplot(diamonds,aes(x=price)) + geom_density()
ggplot(diamonds,aes(x=price,color=cut)) + geom_density()
ggplot(diamonds,aes(x=cut,y=price)) + geom_boxplot()
gglot(diamonds,aes(x=price)) + geom_density()
ggplot(diamonds,aes(x=cut,y=price,fill=color)) + geom_boxplot()
ggplot(diamonds,aes(x=carat, y=price,color=color,shape=cut)) + geom_point() + scale_y_log10()
ggplot(diamonds,aes(x=carat, y=price,color=color,shape=cut)) + geom_point() + scale_y_log10() + labs(x='克拉',y='价格',title='价格克拉关系图') + theme(text = element_text(family = "DroidSansFallbackFull"))