
#Create a Vector

# Define the variable vegas

#->
vegas <-

#Great! Head over to the next exercise.


##Create Vector 2

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector

#->
boolean_vector <-
  
  
#Perfect! Notice that adding a space behind the commas in the 
#c() function improves the readability of your code. Let's practice 
#some more with vector creation in the next exercise.
  
##Creating Vectors 3
  
  
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
#roulette_vector <-  
#->



##Very good! To check out the contents of your vectors, 
#remember that you can always simply type the variable in 
#the console and hit Enter. Proceed to the next exercise!


##Naming a vector

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
#->


##Well done! Continue to the next exercise.

##Naming Vector 2

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
#->
names(poker_vector) <-   
names(roulette_vector) <- 
  
  
#Nice one! A word of advice: try to avoid code duplication at all times. 
#Continue to the next exercise and learn how to do arithmetic with vectors!
  
#Calculating total winning
  
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector

#->
total_vector <- 
  
  
# Print out total_vector
  
total_vector

#Good job! Continue to the next exercise.

##Calculating total winning 2

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
#->
total_daily <- 
  
##Great! Continue to the next exercise.
  
  
##Calculating total winning 3
  
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
#->
total_roulette <-  
  
# Total winnings overall
  
#->
total_week <-
  
# Print out total_week
#->
  
  
###Well done. This is pretty bad news…
  
  
#Comparing Total winnings
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Calculate total gains for poker and roulette
#->
total_poker <- 
total_roulette <-
  
# Check if you realized higher total gains in poker than in roulette 
  
total_poker > total_roulette

#Good job! Continue to the next exercise

##Vector selection:: the good times


# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection

#->
poker_wednesday <- 
  
  
##Great! R also makes it possible to select multiple elements from a vector at 
#once. Learn how in the next exercise!
  
###Vector Selection:: The good times 2
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection

#->
poker_midweek <- 
  
  
##Well done! Continue to the next exercise to specialize in vector 
#selection some more!
  
##Vector Selection: the good times 3
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
#->
roulette_selection_vector <-
  
  
#Awesome! The colon operator is extremely useful and very often used in R programming, so 
#remember it well. Proceed to the next exercise.
  
# Vector Selection: The good times 4
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Select poker results for Monday, Tuesday and Wednesday
#->
poker_start <- 
  
# Calculate the average of the elements in poker_start
#->
  
  
  
##Good job! Apart from subsetting vectors by index or by name, you can also subset vectors 
#by comparison. The next exercises will show you how!
  
##Selection  by comparison step 1
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?

#->
selection_vector <- 
  
# Print out selection_vector
#->
  
  
##Great!
  
##Selection By comparison Step 2
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days

#->
poker_winning_days <- 
  
  
#Good job! Continue to the next exercise.
  
  
##Advanced Selection
  
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on roulette?

#->
selection_vector <- 
  
# Select from roulette_vector these days
#->
roulette_winning_days <- 
  
#Great! This exercise concludes the chapter on vectors. The next chapter will introduce you 
#to the two-dimensional version of vectors: matrices.