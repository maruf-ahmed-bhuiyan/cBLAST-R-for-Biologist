#Write a while loop
# Initialize the speed variable
speed <- 64

# Code the while loop
while ( speed >30) {
  print("Slow down!")
  speed  <- speed - 7
  print(speed)
}

# Print out the speed variable
speed

##Great job! Proceed to the next exercise.


#### Throw in more conditions

# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if ( speed > 48) {
    print("Slow down big time!")
    speed <- speed -11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize the speed variable
speed <- 64

##Wonderful! To further improve our driver assistant
#model, head over to the next exercise!


###Great work! Head over to the next video!

###### Loop over a vector (For loop)


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
l <- linkedin

# Loop version 1
for (i in l){
  print(i)
}

# Loop version 2
for ( i in 1:length(l)){
  print(l[i])
}


##Piece of cake! Go to the next exercise.

### Loop over a list

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)
nyc

# Loop version 1
for ( i in nyc){
  print(i)
}

# Loop version 2
ll <- length(nyc)
for (i in 1:ll){
  print(nyc[[i]])
}

###Good job! Filip mentioned that for loops can also be used for matrices. Let's put that
#to a test in the next exercise.



