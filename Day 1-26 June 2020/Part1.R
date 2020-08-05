#Intro

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6+12


#Awesome! See how the console shows the result 
#of the R code you submitted? 
#Now that you're familiar with the interface, 
#let's get down to R business!

#Arithmetic with R

# An addition
5 + 5

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2^5


# Modulo
28 %% 6


###Great! Head over to the next exercise.


###Variable Assignment

# Assign the value 42 to x
x <- 42
  
# Print out the value of the variable x
x
print(x)



#Good job! Have you noticed that R does not print 
#the value of a variable to the console when you 
#did the assignment? 
#x <- 42 did not generate any output, because 
#R assumes that you will be needing this variable
#in the future. Otherwise you wouldn't have stored
#the value in a variable in the first place, right?
#Proceed to the next exercise

####Variable Assignment 2

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples
print(my_apples)

#Great! Continue to the next exercise!


###Variable Assignment 3

# Assign a value to the variables my_apples 
# and my_oranges
my_apples <- 5
my_oranges <- 6

# Add these two variables together
my_apples + my_oranges

# Create the variable my_fruit
my_fruit <- my_apples + my_oranges

###Nice one! The great advantage of doing calculations 
#with variables is reusability. 
#If you just change my_apples to equal 12 
#instead of 5 and rerun the script, my_fruit 
#will automatically update as well. Continue 
#to the next exercise.

###Aplles and oranges

#See the error messages and try to understand
#and then try to fix it

# Assign a value to the variable my_apples
my_apples <- 5

# Fix the assignment of my_oranges
my_oranges <- 6

# Create the variable my_fruits and print it out
my_fruits <- my_apples + my_oranges 
my_fruits
#R can't perform addition on string & numerical value.

#after changing now it works.!!

#Awesome, keep up the good work! 
#Continue to the next exercise.

##Basic data types in R

# Change my_numeric to be 42
my_numeric <- 42.5
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "some text"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- TRUE
my_logical <- FALSE

#Great work! Continue to the next exercise

##What's That Data Type

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)

##Congratulations! This was the last exercise for 
#this chapter.Head over to the next chapter to get 
#immersed in the world of vectors!
