### ggplot2 is the most common used graphics package in R.  It has great flexibility, 
### allows for a wide variety of graphs, and has an easy to understand grammar.

### Additional resources:
### https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
### http://docs.ggplot2.org/current/

# Install the ggplot2 library and load it.
install.packages("ggplot2")
library(ggplot2)

# Assign the diamonds data


# View the structure of diamonds


# Create a ggplot and assign just price to the aesthetics.


# Create a histogram of price by adding a geometry.


# Assign the ggplot to p without a geometry.


# Create a density plot by adding geom_density() to p


# Create a histogram of p, set bins = 50, and add a title.


# Create a scatter plot carat and price


# Color the scatterplot by the cut variable


# Color the scatterplot by the x variable


# Color the scatterplot blue by placing the color inside geom_point()
# Add a title and customize the x and y axis



# Color the scatterplot blue by placing the color inside geom_point()
# Add a title and customize the x and y axis



## Practice:
## Assign the economics data


## View the structure of economics


## create a histogram of pce


## create a histogram of psavert


## Create a scatterplot of psavert and pce, add geom_smooth() to the plot


## Create a scatterplot of psavert and pce, add geom_smooth(method = lm) to the plot.
## Add a title, label the x-axis "Personal Savings Rate", and y-axis "Personal Consumption Expenditures".


# Line Graph
# Create the variable unemployment_rate in the economics data frame by dividing unemploy by pop.


# Create a line graph of unemployment_rate on date


# Bar Chart
str(diamonds)

# Create a barchart of the count of cut


# Use dplyr to create a barchart of mean price by cut, add the fill option


# Create a scatterplot of carat and price. Use facet_wrap on cut.


## Practice:
setwd("~/Documents/Introduction-to-R")
titanic1 = read.csv("titanic1.csv")
titanic2 = read.csv("titanic2.csv")
titanic = merge(titanic1, titanic2, by = "Id")

str(titanic)

## Create a bar plot of the survival rates on pclass. 
## Add a title and custom axis labels.


## Create a bar plot of the survival rates of the pclass. 
## Use facet_wrap with the sex variable.
## Add a title and custom axis labels.























