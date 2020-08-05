
data(mtcars)
mtcars

###Whats a data frame???
# Print out built-in R data frame
mtcars

#Great! Continue to the next exercise.


#Quick , have a look at your data

# Call head() on mtcars
head(mtcars)

#Wonderful! So, what do we have in this data set? 
#For example, hp represents the car's horsepower; the Datsun has the 
#lowest horse power of the 6 cars that are displayed. For a full overview 
#of the variables' meaning, type ?mtcars in the console and read the help page. 
#Continue to the next exercise!


###Have a look at the structure
# Investigate the structure of mtcars

str(mtcars)

##Nice work! Can you find all the information that is listed in the exercise's 
#assignment? Continue to the next exercise.


###Creating a data Frame

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors

planets_df <- data.frame(name, type, diameter, rotation, rings)
  
planets_df
#Great job! Continue to the next exercise. The logical next step, as you know by now, is inspecting
#the data frame you just created. Head over to the next exercise.
  
###Creating a data frame 2
# Check the structure of planets_df

str(planets_df)

##Awesome! Now that you have a clear understanding of the planets_df data set, it's time to see how you can 
#select elements from it. Learn all about in the next exercises!



##Selection of Data Frame Element
# The planets_df data frame from the previous exercise is pre-loaded
planets_df

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]


# Print out data for Mars (entire fourth row)
planets_df[4,]


##Great! Apart from selecting elements from your data frame by index, you can also use the column names. 
#To learn how, head over to the next exercise.


##selection of data frame Element 2

# The planets_df data frame from the previous exercise is pre-loaded
planets_df

# Select first 5 values of diameter column
planets_df$diameter[1:5]
planets_df$diameter

##Nice! Continue to the next exercise!

###Only planets with rings

# planets_df is pre-loaded in your workspace

# Select the rings variable from planets_df

rings_vector <- planets_df$rings
  
  
# Print out rings_vector
rings_vector


##Great! Continue to the next exercise and discover yet another way of 
#subsetting!
###Sorting

# Play around with the order function in the console
order()

#Great! Now let's use the order() function to sort your data frame!

###Sorting your data frame
# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <-  order(planets_df$diameter)

positions

# Use positions to sort planets_df
planets_df[positions,]


#Wonderful! This exercise concludes the chapter on data frames. Remember
#that data frames are extremely important in R, you will need them all the 
#time. Another very often used data structure is the list. This will be the 
#subject of the next chapter!



###Creating a list

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)


##Wonderful! Head over to the next exercise.

###Creating a Named List
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:6,1:6]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

# Print out my_list
my_list

#Great! Not only do you know how to construct lists now, you can also 
#name them; a skill that will prove most useful in practice. Continue 
#to the next exercise.
