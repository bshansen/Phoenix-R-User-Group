#############################
# Numeric Operations
#############################

# An addition 5+5
5 + 5

# A subtraction 5-5
5 - 5

# A multiplication 3*5
3 * 5

# A division (5 + 5)/2
(5 + 5)/2

# Exponentiation 2^5
2^5

# Modulo 28%%6
28%%6

#######################
# Assign the value 42 to x and 100 to y
x <- 42
y = 100

# Print out the value of the variables x and y
x
y

####################################
# Create vectors, numeric_vector, character_vector, and boolean_vector
# Assign the numeric vector the values 15, 27, 105
# Assign the character vector the values a, b, c
# Assign the boolean vector the values FALSE, TRUE, FALSE

numeric_vector = c(15, 27, 105)
character_vector = c('a', 'b', 'c')
boolean_vector = c(FALSE, TRUE, FALSE)

numeric_vector
character_vector
boolean_vector

# check the structure of each vector
str(numeric_vector)
str(character_vector)
str(boolean_vector)


# Create a data frame of the 3 vectors
my_data_frame = data.frame(numeric_vector, character_vector, boolean_vector)
my_data_frame

# View the structure of the data frame.
str(my_data_frame)


# View a summary of the data frame.
summary(my_data_frame)


# Print each variable of the data frame.
my_data_frame$numeric_vector
my_data_frame$character_vector
my_data_frame$boolean_vector

# Create numeric vector 2
my_data_frame$numeric_vector2 = c(10,20,30)


# Add numeric_vector1 and numeric_vector2 to create numeric_vector3
my_data_frame$numeric_vector3 = my_data_frame$numeric_vector + my_data_frame$numeric_vector2


# perform the sum, mean, min, max, sd, and quantile functions on numeric_vector3
sum(my_data_frame$numeric_vector3)
mean(my_data_frame$numeric_vector3)
min(my_data_frame$numeric_vector3)
max(my_data_frame$numeric_vector3)
sd(my_data_frame$numeric_vector3)
quantile(my_data_frame$numeric_vector3, probs = .9)

summary(my_data_frame$numeric_vector3)

####################################
# Create a data frame
####################################

## Create vectors
## assign x = 1 through 5
## assign y = 5, 10, 15, 20, 25
## assign z = a, b, c, d, e

x = 1:5
y = c(5, 10, 15, 20, 25)
z = c('a', 'b', 'c', 'd', 'e')

## create a data frame of x, y z names my_data_frame
my_data_frame = data.frame(x,y,z)


## print each variable in my_data_frame
my_data_frame$x
my_data_frame$y
my_data_frame$z


## creaate variable 'a' in my_data frame equal to x plus y
## varaible b equal to x divided by y
## variable c equal to x multiplied by y
my_data_frame$a = my_data_frame$x + my_data_frame$y
my_data_frame$b = my_data_frame$x / my_data_frame$y
my_data_frame$c = my_data_frame$x * my_data_frame$y

# Descriptive Statistics
# perform the sum, mean, min, max, sd, and quantile functions on a variable in my_data_frame
sum(my_data_frame$a)
mean(my_data_frame$a)
min(my_data_frame$a)
max(my_data_frame$a)
sd(my_data_frame$a)
quantile(my_data_frame$a, probs = .3)


# perform the summary on variable 'a' and then on entire data frame
summary(my_data_frame)

# delete variable from my_data_frame
my_data_frame$a = NULL

# perform summary on my_data_frame
summary(my_data_frame)


###########################################
# Descriptive statistics and graphs on Iris
###########################################

# assign the iris data set
iris = iris

# view the first 6 and last 6 rows
head(iris, n = 10)
tail(iris)
?head

# use the str() and names() functions to view the data
str(iris)
names(iris)

# create histograms of the Petal.Width
hist(iris$Petal.Width)


# set breaks equal to 20
hist(iris$Petal.Width, breaks = 20)


# change the color to blue and add a title, label x-axis
hist(iris$Petal.Width, main = "My Histogram", xlab = "Petal Width",
     col = "blue")
?hist

# create a scatterplot of Petal.Width and Petal.Length
plot(iris$Petal.Width, iris$Petal.Length)


# color the points by species
plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species)
?plot

# add a title, xlab, and ylab
plot(iris$Petal.Width, iris$Petal.Length, main = "Scatterplot",
     xlab = "Petal Width", ylab = "Petal Length")


# correlation statistic between Petal.Width and Petal.Length
cor(iris$Petal.Width, iris$Petal.Length)


# Create a linear regression of Petal.Length on Petal.Width
reg1 = lm(Petal.Length ~ Petal.Width, data = iris)
summary(reg1)
plot(reg1)

# Multiple linear regression with Petal.Length on Petal.Width and Sepal.Length
reg2 = lm(Petal.Length ~ Petal.Width + Sepal.Length, data = iris)
summary(reg2)


#####################################################################
### Load the mtcars data set and assign it to a data frame named cars
#####################################################################

cars = mtcars

## view the first 6 rows
head(cars)

## Print the structure of the data and print the names of variables in the data frame.
str(cars)
names(cars)

## use the summary function on the cars data frame
summary(cars)

## create histogram of hp
hist(cars$hp)

## set breaks equal to 20
hist(cars$hp, breaks = 20)

## change the color to red and add a title, label x-axis
hist(cars$hp, col = "red", main = "Histogram", xlab = "Horse Power")

## create a scatterplot of hp and mpg
plot(cars$hp, cars$mpg)

## add a title, xlab, and ylab
plot(cars$hp, cars$mpg, main = "Scatterplot", xlab = "Horse Power",
     ylab = "Mile per Gallon")

## correlation statistic between hp and mpg
cor(cars$hp, cars$mpg)

## correlation matrix of the entire data frame by passing cor() on cars
cor(cars)

## Create a linear regression between hp and mpg
reg3 = lm(hp ~ mpg, data = cars)
summary(reg3)

## Create a multiple regression with hp, mpg, cyl.
reg4 = lm(hp ~ mpg + cyl, data = cars)
summary(reg4)

#####################
# Read data into R
#####################

# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory
setwd("~/Documents/Introduction-to-R")

# read in both csv files
titanic1 = read.csv("titanic1.csv")
titanic2 = read.csv("titanic2.csv")

# use the head() function to view both data sets
head(titanic1)
head(titanic2)

# Inner Join
titanic = merge(titanic1, titanic2, by = "Id")

# use head() to view new data set
head(titanic)

# Left Join
titanic = merge(titanic1, titanic2, by = "Id", all.x = T)

# Right Join
titanic = merge(titanic1, titanic2, by = "Id", all.y = T)

# Outer Join
titanic = merge(titanic1, titanic2, by = "Id", all = T)

#################
# Save the Data
#################

# Save the data as a csv
write.csv(titanic, "Titanic.csv", row.names = F)

# Save the data as an R file
save(titanic, file = "Titanic.Rda")

# remove the data and repoen with load()
rm(titanic)

# remove the data and use read.csv() to reload the data.
titanic = read.csv("Titanic.csv")
rm(titanic)
load("Titanic.Rda")

###############################
# VARIABLE DESCRIPTIONS:
###############################

# survival, Survived, (0 = No; 1 = Yes)
# pclass, Passenger Class, (1 = 1st; 2 = 2nd; 3 = 3rd)
# sex, Sex/Gender
# age, Age
# sibsp, Number of Siblings/Spouses Aboard
# parch, Number of Parents/Children Aboard
# fare, Passenger Fare
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)

# use str() to view the data types of each column
str(titanic)

# Delete the Id and name variables.
titanic$Id = NULL

# convert pclass and survived to factor variables
titanic$pclass = factor(titanic$pclass)
titanic$survived = factor(titanic$survived)
str(titanic)

# Add more description to 'embarked' by adding the port name
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)
titanic$embarked = ifelse(titanic$embarked == "C", "Cherbourg", 
                          ifelse(titanic$embarked == "Q", "Queenstown", 
                                 ifelse(titanic$embarked == "S", "Southampton", "")))
str(titanic)
titanic$embarked = factor(titanic$embarked)

# use str()
str(titanic)

# check if any columns have NA
colnames(titanic)[colSums(is.na(titanic)) > 0]

# Check the mean of fare
mean(titanic$fare)
mean(titanic$fare, na.rm = T)


#remove the missing values
titanic = subset(titanic, !is.na(fare))
titanic = subset(titanic, !is.na(age))

titanic$age = ifelse(is.na(titanic$age), 
                     mean(titanic$age, na.rm = T), titanic$age)

# summary() on titanic data set
summary(titanic)

# Split data into a training and test set.

set.seed(123)
indexes = sample(1:nrow(titanic), size=0.70*nrow(titanic))
train = titanic[indexes,]
test = titanic[-indexes,]

# Logistic Regression
# create a logistic regression using sex, fare, and sibsp
str(train)
logit = glm(survived ~ sex + fare + sibsp, data = train, 
            family = "binomial")
summary(logit)

# apply model to test set
test$Prediction = predict(logit, test, type = 'response')
test$Prediction = ifelse(test$Prediction > .5 , 1, 0)

# Validate with confusion matrices
results = table(Prediction = test$Prediction, Actual = test$survived)
results
prop.table(results, 1)
prop.table(results, 2)

# Decision Tree
# install rpart and rattle
install.packages('rpart')
install.packages('rattle', dependencies = T)

## Load the income data
income = read.csv("income.csv")

## Split the data into a training and test set
set.seed(123)
indexes = sample(1:nrow(income), size=0.70*nrow(income))
train = income[indexes,]
test = income[-indexes,]

## Predict income using logistic regression and decision tree
summary(train)
str(train)

logit = glm(income ~ age + sex + capital.gain, data = train, family = "binomial")
summary(logit)
test$prediction = predict(logit, test, type = 'response')
test$prediction = ifelse(test$prediction > .5, 1, 0)
results_logit = table(Prediction = test$prediction, Actual = test$income)
results_logit
prop.table(results_logit, 1)
prop.table(results_logit, 2)

# Decision Tree

library(rpart)
library(rattle)

tree = rpart(income ~ ., data = train)
tree
fancyRpartPlot(tree)

test$prediction = predict(tree, test, type = 'class')
results_tree = table(Prediction = test$prediction, Actual = test$income)
results_tree
prop.table(results_tree, 1)
prop.table(results_tree, 2)
prop.table(results_logit, 1)
prop.table(results_logit, 2)

