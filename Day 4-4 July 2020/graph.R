library(ggplot2)
mpg
#View(mpg)

str(mpg)

# aes for x and y... and then use colour, sahpe, class etc.)
ggplot(mpg, aes(x= mpg$displ, y= mpg$hwy, 
                colour= mpg$class, 
                shape= mpg$drv, 
                size=mpg$cyl)) +
  geom_point()


?mpg
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(colour="blue"))
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(colour="blue")

#facet helps to make several plots using particular columns
ggplot(mpg, aes(displ, hwy)) + 
  geom_point()+ 
  facet_wrap(~class)

# smoother to a plot to see a trend(line)

ggplot(mpg, aes(displ, hwy)) + 
  geom_point()+ 
  geom_smooth()

ggplot(mpg, aes(displ, hwy)) + 
  geom_point()+ 
  geom_smooth(span=1)


library(mgcv)
?mgcv
ggplot(mpg, aes(displ, hwy))+
  geom_point()+
  geom_smooth(method="gam", formula= y ~s(x))

# give linear model
ggplot(mpg, aes(displ, hwy))+
  geom_point()+
  geom_smooth(method= "lm")




## Boxplot, jittered points

ggplot(mpg, aes(drv, hwy))+
  geom_point()

ggplot(mpg, aes(drv, hwy))+ geom_jitter()
ggplot(mpg, aes(drv, hwy))+ geom_boxplot()
ggplot(mpg, aes(drv, hwy))+ geom_violin()
ggplot(mpg, aes(drv, hwy))+ geom_violin() + geom_jitter()
ggplot(mpg, aes(drv, hwy))+ geom_violin() + geom_jitter() + geom_count()


##Histograms and Frequency Polygons


ggplot(mpg, aes(hwy)) + geom_histogram()
ggplot(mpg, aes(hwy)) + geom_freqpoly()

## use binwith to change the width
library(rafalib)
library(dplyr)
mypar(1,2)

ggplot(mpg, aes(hwy)) +
  geom_freqpoly(binwidth = 2.5)
ggplot(mpg, aes(hwy)) +
  geom_freqpoly(binwidth = 1)

ggplot(mpg, aes(displ, colour=drv))+ 
  geom_freqpoly(binwith=0.5)

ggplot(mpg, aes(displ, fill = drv)) +
  geom_histogram(binwidth = 0.5) +
  facet_wrap(~drv, ncol = 1)


#Bar charts

ggplot(mpg, aes(mpg$manufacturer)) + 
  geom_bar()


drugs<- data.frame(drug=c("a", "b", "c"),
                  effect=c(4.2, 9.7, 6.1))
ggplot(drugs, aes(drug, effect)) + geom_bar(stat = "identity")
ggplot(drugs, aes(drug, effect)) + geom_point()


economics

ggplot(economics, aes(date, unemploy / pop)) +
  geom_line()
ggplot(economics, aes(date, uempmed)) +
  geom_line()
#View(economics)


ggplot(economics, aes(unemploy/pop, economics$uempmed)) +
  geom_path()+
  geom_point()
year <- function(x) as.POSIXlt(x)$year + 1900
ggplot(economics, aes(unemploy / pop, uempmed)) +
  geom_path(colour = "grey50") +
  geom_point(aes(colour = year(date)))


##modifying the axes

ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha= 1/3)
ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha = 1 / 3) +
  xlab("city driving (mpg)") +
  ylab("highway driving (mpg)")

# Remove the axis labels with NULL
ggplot(mpg, aes(cty, hwy)) +
  geom_point(alpha = 1 / 3) +
  xlab(NULL) +
  ylab(NULL)

ggplot(mpg, aes(cty, hwy)) + 
  geom_jitter(width=0.25)

ggplot(mpg, aes(drv, hwy)) +
  geom_jitter(width = 0.25) +
  xlim("f", "r") +
  ylim(20, 30)

ggplot(mpg, aes(drv, hwy))+
  geom_jitter(width=0.25, na.rm = TRUE)+
  ylim(NA,30)

p<- ggplot(mpg, aes(displ, hwy, colour= factor(cyl))) +
  geom_point()
p

