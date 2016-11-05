
## What is dplyr?
  # dplyr is a grammar that makes data manipulation quick and easy.

## Why learn dplyr?
  # Data scientists spend 80% of their time cleaning data.  Being able to quickly 
  # clean and summarize data adds great value to your data science tasks.

## How does dplyr work?
  #dplyr has broken down the data cleaning tasks using 6 verbs.
    # These verbs are:
      # select()	select columns
      # filter()	filter rows
      # arrange()	re-order or arrange rows
      # mutate()	create new columns
      # summarise()	summarise values/aggregations
      # group_by()	allows for group operations, similar to SQL



#######################
# The select verb
#######################

# Install the dplyr library
install.packages('dplyr')

# load the dplyr library
library(dplyr)

# Install the nycflights13 library
install.packages('nycflights13')

# Load the nycflights13 library
library(nycflights13)

# Assign the flights data
flights = flights

# View the column names


# Select the carrier and origin columns


# Select the dep_tim and distance columsn and assign it to x


# Use str() to view the data

# Convert x to a normal data frame

# Select all columns except flight


# Select all columns flight and hour


# Look at the names of the columns


# Select the last three columns using ':'


# Use starts_with to select variables that start with "a"


# Use ends_with to select variables that end with "y"


# Use contains to select variables that contain "u"


## Practice: select the columns that contain "time"


## select columns dep_delay through carrier


## Select all columns except "tailnum", "day", and "arr_delay"


#######################
# The filter verb
#######################

# Filter the flights data for rows where the hour was greater than or equal to 5


# day is 1 or day is 5


# two column conditions, day is greater than 2 and hour is greater than 10


# carrier %in% "B6"


# carrier %in% "B6" or "UA"


# carrier not in "B6" or "UA"


## Practice: filter flights that were in October and and departed at 5


## select flights where air_time is less than 100.


#######################
# The arrange verb
#######################

# Arrange flights by month


# Arrange flights by month and dep_delay

# arrange in descending order by month

# arrange month by descending order dep_delay in ascending order

## Practice: arrange the flights by carrier and month and assign to x

#######################
# The mutate verb
#######################

# Create the variable gain, arr_time minus dep_time



## Practice:
  ## divide distance by air_time to get speed



###################################
# Combining verbs and the pipe
###################################

# select the columns year, month, day, and carrier. 
  # Then filter where month is 12.

# select the columns year, month, day, and carrier. 
  # Then filter where month is 12 and arrange by day


# The pipe operator %>%
  # Simplifies the process of combining multiple steps and functions
  # Take the object to the left and pass it to the function on the right.



# Use the pipe and select the columns year, month, day, and carrier.
  # Then filter where month is 12 and arrange by day


## Practice:
  ## select carrier, distance, air_time, and month.
  ## filter where month is 5
  ## create variable mpm = distance/air_time
  ## arrange by mpm in descending order


## select origin, dest, dep_time, arr_time, carrier
  ## filter carriers 'AA' and 'DL'
  ## create travel_time, arr_time minus dep_time
  ## arrange by travel_time


###################################
# The summarise verb
###################################

# find the mean, median, standard deviation, min, and max of distance


# find the average of air_time


## Practice:
  ## filter carrier by 'DL'
  ## find the average distnace, median distance


###################################
# The Group By Verb
###################################

# Calcuate the mean and median distance for each carrier.

## Practice:
  ## group_by carrier and month
  ## filter for month 9 and 10
  ## calculate average, min, and max distance


#################################
# Joins
#################################

# join the titanic data





















