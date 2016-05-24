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
28 %% 6

#######################
# Assign the value 42 to x and 100 to y
x = 42
y <- 100

# Print out the value of the variables x and y
x
y

####################################
# Create vectors, numeric_vector, character_vector, and boolean_vector
# Assign the numeric vector the values 15, 27, 105
# Assign the character vector the values a, b, c
# Assign the boolean vector the values FALSE, TRUE, FALSE

numeric_vector = c(15,27,105)
character_vector = c("a","b","c")
boolean_vector = c(FALSE, TRUE, FALSE)

# check the structure of each vector

str(numeric_vector)
str(character_vector)
str(boolean_vector)

####################################
# Create a data frame
####################################

# Create vectors
# assign x = 1 through 5
# assign y = 5, 10, 15, 25
#assign z = a, b, c, d, e

x = 1:5
y = c(5,10,15,20,25)
z = c('a', 'b', 'c', 'd', 'e')

# create a data frame of x, y z names my_data_frame

my_data_frame=data.frame(x,y,z)

# print each variable in my_data_frame

my_data_frame$x
my_data_frame$y
my_data_frame$z

# creaate variable 'a' in my_data frame equal to x plus y
# varaible b equal to x divided by y
# variable c equal to x multiplied by y

my_data_frame$a = my_data_frame$x + my_data_frame$y
my_data_frame$b = my_data_frame$x / my_data_frame$y
my_data_frame$c = my_data_frame$x * my_data_frame$y

# perform the sum, mean, min, max, sd, and quantile functions on a variable in my_data_frame

sum(my_data_frame$a)
mean(my_data_frame$b)
min(my_data_frame$c)
max(my_data_frame$c)
median(my_data_frame$x)
sd(my_data_frame$y)
quantile(my_data_frame$a, probs=.9)

# perform the summary on variable 'a' and then on entire data frame

summary(my_data_frame$a)
summary(my_data_frame)

# delete variable from my_data_frame
# perform summary on my_data_frame

my_data_frame$a = NULL
summary(my_data_frame)

# documentation for functions, ?summary

?summary

###########################################
# Descriptive statistics and graphs on Iris
###########################################

# assign the iris data set

iris
iris=iris

# view the first 6 and last 6 rows

head(iris)
tail(iris)

# use the str() and names() functions to view the data

str(iris)
names(iris)

# create histograms of the Petal.Width

hist(iris$Petal.Width)

# set breaks equal to 20

hist(iris$Petal.Width, breaks = 20)

# change the color to blue and add a title, label x-axis

hist(iris$Petal.Width, breaks = 20, col = 'blue', main = 'Histogram',
     xlab = 'Petal Width')

# create a scatterplot of Petal.Width and Petal.Length

plot(iris$Petal.Width, iris$Petal.Length)

# color the points by species

plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species)

# add a title, xlab, and ylab

plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species, main = 'Iris Scatterplot',
     xlab = 'Petal Width', ylab = 'Petal Length')

# correlation statistic between Petal.Width and Petal.Length

cor(iris$Petal.Width, iris$Petal.Length)

#####################
# Read data into R
#####################

# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory
setwd("~/Downloads/titanicdata")

# read in both csv files
titanic1 = read.csv('titanic1.csv')
titanic2 = read.csv('titanic2.csv')

# use the head() function to view both data sets
head(titanic1)
head(titanic2)

#Inner Join
titanic = merge(titanic1, titanic2, by = 'Id')

# use head() to view new data set
head(titanic)

# Left Join
titanic = merge(titanic1, titanic2, by = 'Id', all.x = T)

# Right Join
titanic = merge(titanic1, titanic2, by = 'Id', all.y = T)

# Outer Join
titanic = merge(titanic1, titanic2, by = 'Id', all = T)

###############################
# VARIABLE DESCRIPTIONS:
###############################

# survival, Survived, (0 = No; 1 = Yes)
# pclass, Passenger Class, (1 = 1st; 2 = 2nd; 3 = 3rd)
# name, Name
# sex, Sex/Gender
# age, Age
# sibsp, Number of Siblings/Spouses Aboard
# parch, Number of Parents/Children Aboard
# ticket, Ticket Number
# fare, Passenger Fare
# cabin, Cabin
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)

# use str() to view the data types of each column
str(titanic)

# convert pclass and survived to factor variables
titanic$pclass = factor(titanic$pclass)
titanic$survived = factor(titanic$survived)

# Add more description to 'embarked' by adding the port name

titanic$embarked = ifelse(titanic$embarked=='C','Cherbourg',
                          ifelse(titanic$embarked=='Q','Queenstown',
                                 ifelse(titanic$embarked=='S','Southhampton','')))
# use str()
str(titanic)

# change embarked to factor
titanic$embarked = factor(titanic$embarked)

# check if any columns have NA
colnames(titanic)[colSums(is.na(titanic)) > 0]

# set fare and age equal to -1 if na
titanic$fare[is.na(titanic$fare)] = -1
titanic$age[is.na(titanic$age)] = -1

# summary() on titanic data set
summary(titanic)


#################################
# Machine Learning Examples
#################################

# install the libraries rpart, rattle, randomForest, e1071, xgboost, nnet, h20
install.packages('rpart', dependencies = T)
install.packages('rattle', dependencies = T)
install.packages('randomForest', dependencies = T)
install.packages('e1071', dependencies = T)
install.packages('xgboost', dependencies = T)
install.packages('nnet', dependencies = T)
install.packages('h20', dependencies = T)

# remove Id, name, ticket, and cabin from the data set. They add little if any predictive power.
names(titanic)
# delete each column using this approach titanic$Id = NULL or index
titanic = titanic[,c(2,3,5,6,7,8,10,12)]
names(titanic)

# Split data into a training and test set.

set.seed(123)
#Sample Indexes
indexes = sample(1:nrow(titanic), size=0.75*nrow(titanic))

# Split data
train = titanic[indexes,]
test = titanic[-indexes,]

# Logistic Regression
# create a logistic regression using sex, fare, and sibsp

logit = glm(survived ~ sex + fare + sibsp, data = train, family = 'binomial')
summary(logit)

# apply model to test set

test$logit = predict(logit, test, type = 'response')
test$logit = ifelse(test$logit>.5, 1, 0)

# Validate with confusion matrices
xtabs(~logit+survived, data = test)
prop.table(xtabs(~logit+survived, data = test),1)
prop.table(xtabs(~logit+survived, data = test),2)

# Decision Tree
library(rpart)
library(rattle)

tree = rpart(survived ~ ., data = train)
fancyRpartPlot(tree)

test$tree = predict(tree, test, type = 'class')
xtabs(~tree+survived, data = test)
prop.table(xtabs(~tree+survived, data = test),1)
prop.table(xtabs(~tree+survived, data = test),2)

# Random Forest
library(randomForest)

rf = randomForest(survived ~ . , data = train)
rf
test$rf = predict(rf, test)
xtabs(~rf+survived, data = test)
prop.table(xtabs(~rf+survived, data = test),1)
prop.table(xtabs(~rf+survived, data = test),2)

# Support Vector Machine
library(e1071)

svm = svm(survived ~ . , data = train)
test$svm = predict(svm, test)
xtabs(~svm+survived, data = test)
prop.table(xtabs(~svm+survived, data = test),1)
prop.table(xtabs(~svm+survived, data = test),2)

