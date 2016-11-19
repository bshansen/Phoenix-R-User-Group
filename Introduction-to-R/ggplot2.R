### ggplot2 is the most common used graphics package in R.  It has great flexibility, 
### allows for a wide variety of graphs, and has an easy to understand grammar.

### Additional resources:
### https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
### http://docs.ggplot2.org/current/

# Install the ggplot2 library and load it.
install.packages("ggplot2")
library(ggplot2)

# Assign the diamonds data
diamonds = diamonds

# View the structure of diamonds
str(diamonds)

# Create a ggplot and assign just price to the aesthetics.
ggplot(diamonds, aes(price))

# Create a histogram of price by adding a geometry.
ggplot(diamonds, aes(price)) + geom_histogram()

# Assign the ggplot to p without a geometry.
p = ggplot(diamonds, aes(price))
p

# Create a density plot by adding geom_density() to p
p + geom_density()

# Create a histogram of p, set bins = 50, and add a title.
p + geom_histogram()
p + geom_histogram(bins = 50)

# Create a scatter plot carat and price
ggplot(diamonds, aes(carat, price)) + geom_point()

# Color the scatterplot by the cut variable
ggplot(diamonds, aes(carat, price, color = cut)) + geom_point()

# Color the scatterplot by the x variable
ggplot(diamonds, aes(carat, price, color = x)) + geom_point()

# Color the scatterplot blue by placing the color inside geom_point()
# Add a title and customize the x and y axis
ggplot(diamonds, aes(carat, price)) + geom_point(color = 'blue') +
  labs(title = "My Scatterplot", x = "Carat", y = "Price")

## Practice:
## Assign the economics data
economics = economics

## View the structure of economics
str(economics)

## create a histogram of pce
ggplot(economics, aes(pce)) + geom_histogram()

## create a histogram of psavert
ggplot(economics, aes(psavert)) + geom_histogram()

## Create a scatterplot of psavert and pce, add geom_smooth() to the plot
ggplot(economics, aes(psavert, pce)) + geom_point() +
  geom_smooth()

## Create a scatterplot of psavert and pce, 
## add geom_smooth(method = lm) to the plot.
## Add a title, label the x-axis "Personal Savings Rate", 
##and y-axis "Personal Consumption Expenditures".
ggplot(economics, aes(psavert, pce)) + geom_point() +
  geom_smooth(method = "lm") + 
  labs(title = "My Scatterplot", x = "Personal Savings", y = "Personal Consumption")

# Line Graph
# Create the variable unemployment_rate in the economics 
# data frame by dividing unemploy by pop.
economics$unemployment_rate = economics$unemploy/economics$pop

# Create a line graph of unemployment_rate on date
ggplot(economics, aes(date, unemployment_rate)) + geom_line()

# Bar Chart
str(diamonds)

# Create a barchart of the count of cut
ggplot(diamonds, aes(cut)) + geom_bar()

# Use dplyr to create a barchart of mean price by cut, add the fill option
d = diamonds %>% group_by(cut) %>%
  summarise(mean_price = mean(price))

ggplot(d, aes(cut, mean_price, fill = cut)) + geom_bar(stat = "identity")

# Create a scatterplot of carat and price. Use facet_wrap on cut.
ggplot(diamonds, aes(carat, price, color = color)) + geom_point() + facet_wrap(~cut)

## Practice:
setwd("~/Documents/Introduction-to-R")
titanic1 = read.csv("titanic1.csv")
titanic2 = read.csv("titanic2.csv")
titanic = merge(titanic1, titanic2, by = "Id")

str(titanic)

## Create a bar plot of the survival rates on pclass. 
## Add a title and custom axis labels.
d = titanic %>% group_by(pclass) %>% 
      summarise(Survival_Rate = mean(survived))
d
ggplot(d, aes(pclass, Survival_Rate)) + geom_bar(stat = "identity")

## Create a bar plot of the survival rates of the pclass. 
## Use facet_wrap with the sex variable.
## Add a title and custom axis labels.
d = titanic %>% group_by(pclass, sex) %>%
  summarise(Survival_Rate = mean(survived))
d

ggplot(d, aes(pclass, Survival_Rate)) + geom_bar(stat = "identity") +
  facet_wrap(~sex) + 
  labs(title = "My Bar Chart", x = "Class", y = "Survival Rate")

bshanse1@asu.edu




















