
##Conditional Statements

####The if statement

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print('You are popular!')
}


##Great! Try to see what happens if you change the medium 
#and num_views variables and run your code again. Let's 
#further customize these if statements in the next exercise.


###  Add an else

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium

if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print ("Unknown medium")
}

# Control structure for num_views


if (num_views > 15) {
  print("You'are popular")
} else {
  print("Try to be more visible!")
}

#Great job! You also had Facebook information available,
#remember? Time to add some more statements to our control 
#structures using else if!

### Customize further: else if 

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  print("Your number of views are average")
} else {
  print("Try to be more visible!")
}


###Awesome! Have another look at the second control structure. 
#Because R abandons the control flow as soon as it finds a condition 
#that is met, you can simplify the condition for the else if part in 
#the second construct to num_views > 10
