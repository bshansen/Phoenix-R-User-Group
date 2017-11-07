
# https://github.com/bshansen/R/tree/master/Introduction-to-R

#############################
# Numeric Operations
#############################

# An addition 5+5
5+5

# A subtraction 5-5
5-5

# A multiplication 3*5
3*5

# A division (5 + 5)/2
(5 + 5)/2

# Exponentiation 2^5
2^5

#######################
# Assign the value 42 to x and 100 to y
x <- 42
x

y = 100
y

# Print out the value of the variables x and y

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

# Create numeric vector 2
my_data_frame$numeric_vector2 = c(4,5,6)

# Add numeric_vector1 and numeric_vector2 to create numeric_vector3
my_data_frame$numeric_vector3 = my_data_frame$numeric_vector + my_data_frame$numeric_vector2

# perform the sum, mean, min, max, sd, and quantile functions on numeric_vector3
sum(my_data_frame$numeric_vector)
mean(my_data_frame$numeric_vector)
min(my_data_frame$numeric_vector)
max(my_data_frame$numeric_vector)
sd(my_data_frame$numeric_vector)
quantile(my_data_frame$numeric_vector, probs = .9)
?sd()

summary(my_data_frame)

####################################
# Create a data frame
####################################

## Create vectors
## assign x = 1 through 5
## assign y = 5, 10, 15, 20, 25
## assign z = a, b, c, d, e
x = 1:5
y = c(5,10,15,20,25)
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
max(my_data_frame$a)
min(my_data_frame$a)
sd(my_data_frame$a)
quantile(my_data_frame$a, probs = .7)

# perform the summary on variable 'a' and then on entire data frame
summary(my_data_frame)

# delete variable from my_data_frame
my_data_frame$c = NULL

# perform summary on my_data_frame
summary(my_data_frame)
rm(my_data_frame)

#####################
# Read data into R
#####################

# Dowloand titanic data from https://github.com/bshansen/Introduction-to-R

# set working directory
setwd("~/Documents/Introduction-to-R")

# read in both csv files
titanic1 = read.csv('Titanic1.csv')
titanic2 = read.csv('Titanic2.csv')

# use the head() function to view both data sets
head(titanic1)
head(titanic2)

# Inner Join
titanic = merge(titanic1, titanic2, by = 'Id')

# use head() to view new data set
head(titanic)

# Left Join
titanic = merge(titanic1, titanic2, by = 'Id', all.x = T)

# Right Join
titanic = merge(titanic1, titanic2, by = 'Id', all.y = T)

# Outer Join
titanic = merge(titanic1, titanic2, by = 'Id', all = T)

#################
# Save the Data
#################

# Save the data as a csv
write.csv(titanic, 'Titanic.csv')

# Save the data as an R file
save(titanic, file = 'Titanic.Rda')

# remove the data and repoen with load()
rm(titanic)
load('Titanic.Rda')

# remove the data and use read.csv() to reload the data.
titanic = read.csv('titanic.csv')

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

# Add more description to 'embarked' by adding the port name
# embarked, Port of Embarkation, (C = Cherbourg; Q = Queenstown; S = Southampton)

titanic$embarked = ifelse(titanic$embarked == 'C', 'Cherbourg',
                          ifelse(titanic$embarked == 'Q', 'Queenstown', 'Southampton'))

# Check the mean of fare
mean(titanic$fare)
mean(titanic$fare, na.rm = T)






