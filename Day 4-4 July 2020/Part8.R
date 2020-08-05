## plot with base graphics
##Load the data iris
data(iris)

#scatter plot bivariate analysis with petal length and petal width
plot(x = iris$Petal.Length, y = iris$Petal.Width)

#Time to modify labels saying x axis as petal length and y axis as petal width
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  xlab = "Petal Lenth",
  ylab = "Petal Width"
)

#Add color to the plot
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  xlab = "Petal Lenth",
  ylab = "Petal Width", 
  col = "royalblue3"
)

##pch determines the shape of the plot
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  xlab = "Petal Lenth",
  ylab = "Petal Width", 
  col = "royalblue3",
  pch = 18
)

#Univariate analysis
#Histogram with petal width

hist(x = iris$Petal.Width)

#boxplot (we can check how a continuous variable changes with categorical variable). Please check how 
#petal length chages across specis
?boxplot
boxplot(iris$Petal.Length ~ iris$Species)

##------------------------------------
##Install and load ggplot package
#install.packages("ggplot2")
library(ggplot2)

#Scatter plot with petal length and petal width
ggplot(data = iris, mapping = aes(x = Petal.Length , y = Petal.Width)) + 
          geom_point()
##Aesthetics


##House dataset

house <- read.csv("houses_new.csv", header = TRUE)
house
View(house)


##histogram (Fill as attribute)
ggplot(data = house_new, aes(x = house_new$price)) + geom_histogram()

ggplot(data = house_new, aes(x = house_new$price)) + geom_histogram(bins = 50)

ggplot(data = house_new, aes(x = house_new$price)) + 
  geom_histogram(bins = 50, fill = "palegreen3")

ggplot(data = house_new, aes(x = house_new$price)) + 
  geom_histogram(bins = 50, fill = "palegreen3", col = "black")

##Position, use fill as an aesthetic
ggplot(data = house_new, aes(x = house_new$price, 
                             fill = house_new$air_cond2)) + 
                geom_histogram()

##Barplot 
##when to use barplot and when to use histogram
##distribution of categorical variable -> barplot
##distribution of continuous variable ->  histogram

ggplot(data= house_new, aes(x = house_new$waterfront2))+ geom_bar()

##Waterfront ~ aircondition

ggplot(data = house_new,
       aes(x = house_new$waterfront2, fill = house_new$air_cond2)) + 
  geom_bar()
ggplot(data = house_new,
       aes(x = house_new$waterfront2, fill = house_new$air_cond2)) + 
  geom_bar(position = "fill")

for(i in 1:length(house$sewer)){
  if(house$sewer[i] == 1){
    house$sewer2[i] = "None"
  }else if(house$sewer[i] == 2){
    house$sewer2[i] = "Private"
  }else {
    house$sewer2[i] = "Public"
  }
}

#waterfront ~ sewer
ggplot(data = house_new, aes(x = house_new$waterfront2, fill = house_new$sewer2)) + 
  geom_bar(position = "fill")

##Alternative of histogram
#Frequency polygon

ggplot(data = house_new, aes(x = house_new$price))+ 
  geom_freqpoly()
ggplot(data = house_new, aes(x = house_new$price))+ 
  geom_freqpoly(bins = 50)
ggplot(data = house_new, aes(x = house_new$price, 
                             col = house_new$air_cond2))+ 
  geom_freqpoly(bins = 100)

##Box plot


x<- c(1, 3,5, 7, 8, 9, 12, 15, 30)
boxplot(x)
ggplot(data = house_new, aes(x = factor(house_new$rooms), y = house_new$price)) + 
  geom_boxplot()
ggplot(data = house_new,
       aes(
         x = factor(house_new$rooms),
         y = house_new$price,
         fill = house_new$air_cond2
       )) + geom_boxplot()
ggplot(data = house_new,
       aes(
         x = factor(house_new$rooms),
         y = house_new$price,
         fill = house_new$sewer2
       )) + geom_boxplot()

##Smooth_line
ggplot(data = house_new, aes(x = house_new$living_area, 
                             y = house_new$price)) +
              geom_smooth()
ggplot(data = house_new,
       aes(
         x = house_new$living_area,
         y = house_new$price,
         col = house_new$air_cond2 )) + 
  geom_smooth()

##linear model
ggplot(data = house_new, aes(x = house_new$living_area, 
                             y = house_new$price)) + 
              geom_point() +
              geom_smooth(method = "lm", se = F)
ggplot(data = house_new,aes(x = house_new$living_area,
                            y = house_new$price,
                            col = house_new$air_cond2)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = F)


#faceting
ggplot(data = house_new,
       aes(
         x = house_new$living_area,
         y = house_new$price,
         col = house_new$air_cond2)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = F) + 
  facet_grid( ~ house_new$air_cond2)
