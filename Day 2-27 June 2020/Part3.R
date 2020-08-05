

##What's a matrix??

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9 , byrow = TRUE, nrow = 3)

#Great! Continue to the next exercise.

##Analyze matrices, you shall

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = T)


##The force is actually with you! Continue to the next exercise.

##Naming a matrix

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <-
  matrix(c(new_hope, empire_strikes, return_jedi),
         nrow = 3,
         byrow = TRUE)

star_wars_matrix

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <-
  c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region


# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

#Great! You're on the way of becoming an R jedi! Continue to the next exercise.



##Calculating the worldwide box office

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(
  box_office,
  nrow = 3,
  byrow = TRUE,
  dimnames = list(
    c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),
    c("US", "non-US")
  )
)

star_wars_matrix
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
  
worldwide_vector

##Well done! Continue to the next exercise.

##Adding a column for worldwide box office

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(
  box_office,
  nrow = 3,
  byrow = TRUE,
  dimnames = list(
    c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),
    c("US", "non-US")
  )
)

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
  
all_wars_matrix

#Nice job! After adding column to a matrix, the logical next step is adding rows. Learn how in the next exercise.


box_office_2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(
  box_office_2,
  nrow = 3,
  byrow = TRUE,
  dimnames = list(
    c("The Phantom Menace", "Attack of the clones", "Revenge of the Sith"),
    c("US", "non-US")
  )
)


#Adding a row

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix
star_wars_matrix2

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

all_wars_matrix

#Wonderful! Continue with the next exercise and see how you can combine the results of the rbind() function with
#the colSums() function!

###The total box office revenue for the entire saga

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

##Bellissimo! Head over to the next exercise to learn matrix subsetting.


##Selection of matrix elements

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
  
# Average non-US revenue
mean(non_us_all)
  
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some
# Average non-US revenue for first two movies
mean(non_us_some)
  
  
###Nice one! Continue to the next exercise.
#A little Arithmetic with metrices
  
# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix/5

# Print the estimate to the console
visitors

##Great! What do these results tell you? A staggering 92 million people went
#to see A New Hope in US theaters! Continue to the next exercise.

