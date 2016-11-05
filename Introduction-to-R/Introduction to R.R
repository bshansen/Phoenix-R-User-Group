#############################
# Numeric Operations
#############################

# An addition 5+5


# A subtraction 5-5


# A multiplication 3*5


# A division (5 + 5)/2


# Exponentiation 2^5


# Modulo 28%%6


#######################
# Assign the value 42 to x and 100 to y



# Print out the value of the variables x and y



####################################
# Create vectors, numeric_vector, character_vector, and boolean_vector
# Assign the numeric vector the values 15, 27, 105
# Assign the character vector the values a, b, c
# Assign the boolean vector the values FALSE, TRUE, FALSE






# check the structure of each vector





# Create a data frame of the 3 vectors



# View the structure of the data frame.



# View a summary of the data frame.



# Print each variable of the data frame.



# Add numeric_vector1 and numeric_vector2 to create numeric_vector3



# perform the sum, mean, min, max, sd, and quantile functions on numeric_vector3



####################################
# Create a data frame
####################################

## Create vectors
## assign x = 1 through 5
## assign y = 5, 10, 15, 25
## assign z = a, b, c, d, e





## create a data frame of x, y z names my_data_frame



## print each variable in my_data_frame





## creaate variable 'a' in my_data frame equal to x plus y
## varaible b equal to x divided by y
## variable c equal to x multiplied by y




# Descriptive Statistics
# perform the sum, mean, min, max, sd, and quantile functions on a variable in my_data_frame









# perform the summary on variable 'a' and then on entire data frame




# delete variable from my_data_frame
# perform summary on my_data_frame



###########################################
# Descriptive statistics and graphs on Iris
###########################################

# assign the iris data set




# view the first 6 and last 6 rows




# use the str() and names() functions to view the data




# create histograms of the Petal.Width



# set breaks equal to 20



# change the color to blue and add a title, label x-axis



# create a scatterplot of Petal.Width and Petal.Length



# color the points by species



# add a title, xlab, and ylab



# correlation statistic between Petal.Width and Petal.Length



# Create a linear regression of Petal.Length on Petal.Width



# Multiple linear regression with Petal.Length on Petal.Width and Sepal.Length



#####################################################################
### Load the mtcars data set and assign it to a data frame named cars
#####################################################################

cars = mtcars

## view the first 6 rows


## Print the structure of the data and print the names of variables in the data frame.

## use the summary function on the cars data frame


## create histogram of hp


## set breaks equal to 20


## change the color to red and add a title, label x-axis


## create a scatterplot of hp and mpg


## add a title, xlab, and ylab


## correlation statistic between hp and mpg


## correlation matrix of the entire data frame by passing cor() on cars


## Create a linear regression between hp and mpg


## Create a multiple regression with hp, mpg, cyl.


#####################
# Read data into R
#####################

# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory


# read in both csv files


# use the head() function to view both data sets


# Inner Join


# use head() to view new data set


# Left Join


# Right Join


# Outer Join


#################
# Save the Data
#################

# Save the data as a csv


# Save the data as an R file


# remove the data and repoen with load()


# remove the data and use read.csv() to reload the data.



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


# Delete the Id and name variables.


# convert pclass and survived to factor variables


# Add more description to 'embarked' by adding the port name



# use str()


# change embarked to factor


# check if any columns have NA
colnames(titanic)[colSums(is.na(titanic)) > 0]

# Check the mean of fare


#remove the missing values


# summary() on titanic data set


# Split data into a training and test set.

set.seed(123)
indexes = sample(1:nrow(titanic), size=0.70*nrow(titanic))
train = titanic[indexes,]
test = titanic[-indexes,]

# Logistic Regression
# create a logistic regression using sex, fare, and sibsp



# apply model to test set



# Validate with confusion matrices



# Decision Tree
# install rpart and rattle
install.packages('rpart')
install.packages('rattle', dependencies = T)

library(rpart)
library(rattle)




## Load the income data
## Split the data into a training and test set
## Predict income using logistic regression and decision tree







