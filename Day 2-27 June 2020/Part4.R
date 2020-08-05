

#Whats a factor and why would you use it

# Assign to the variable theory what this chapter is about!
theory <- "factors for categorical variables"


##Good job! Ready to start? Continue to the next exercise!


##What's a factor and why would you use it? (2)

# Sex vector
sex_vector <- c("Male", "Female", 
                "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector
  

##Great! If you want to find out more about the factor() function, do not hesitate to type 
#?factor in the console. This will open up a help page. Continue to the next exercise.
  
##What's a factor and why would you use it? (3)
  
# Animals
animals_vector <- c("Elephant", "Giraffe", 
                    "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", 
                        "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector,
                                    order = TRUE, 
                                    levels = c("Low", 
                                               "Medium", "High"))
factor_temperature_vector


#Can you already tell what's happening in this exercise? Awesome! Continue to the next exercise and get into 
#the details of factor levels.


#Factor Levels

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")


#  factor_survey_vector
factor_survey_vector


#Wonderful! Proceed to the next exercise

###Summarizing size factor

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)


# Generate summary for factor_survey_vector
summary(factor_survey_vector)


##Nice! Have a look at the output. The fact that you identified 
#"Male" and "Female" as factor levels in factor_survey_vector enables
#R to show the number of elements for each category.
