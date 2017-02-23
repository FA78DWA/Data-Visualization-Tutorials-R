# Practice the ggplot2 Library
#1- load
library("ggplot2")
#2- load data
data("diamonds")
#3- view the data in table
#View(diamonds)
#4- get more info about the dataset
help("diamonds")

###############################PLOT
#ggplot(diamonds, aes(x=carat, y=price, color=clarity,shape = cut)) 
#+ geom_point() + ggtitle("Scatter plot") + xlab("carat (weight)") 
#+ scale_y_log10()

##se=standard_error, lm= best fit line. Add color to make a curve for each
#ggplot(diamonds, aes(x=carat, y=price, color = clarity)) + geom_point() 
#+ geom_smooth(se=FALSE, method =lm) 

## Facetting: view each plot separately
#ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point() 
#+ facet_wrap(~ clarity)

## color ~ clarity = color explaned by clarity
#ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
#+ facet_grid(color ~ clarity)

###############################HISTOGRAMS
## Free the y axis
#ggplot(diamonds, aes(x=price)) + geom_histogram(binwidth = 200) 
#+ facet_wrap(~clarity, scale="free_y")

## Stack Histogram
#ggplot(diamonds, aes(x=price, fill=clarity)) + geom_histogram()

## Density, separate by color
ggplot(diamonds, aes(x=price, color=cut)) + geom_density()