# R Objects
my_numeric <- 42
my_character <-"Universe"
my_logical <- F

# Vectors - contains objects of the same class
vec <- c(1, 3, 5, 7)

# Time to practice
numeric_vector <- c(1, 2, 3)
character_vector <- letters[1:3]
boolean_vector<-c(T, F, T)

x<-42
my_apples<-5
my_oranges<-6
my_fruit<-my_oranges+my_apples
my_character<-"universe"
my_logical<-F

a<-1:6
b<-10:15
c<-a+b

poker_vector <- c(140, -50, 20, -120, 240)
names(poker_vector)<-c("M", "Tu", "W", "Th", "F")
sum(poker_vector)

selection_vector<-poker_vector>0
poker_vector[selection_vector]

# Matrices
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

star_wars_matrix<-rbind(new_hope, empire_strikes, return_jedi)

colnames(star_wars_matrix)<-c("US", "non-US")
rownames(star_wars_matrix)<-c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix
rowSums(star_wars_matrix)
colSums(star_wars_matrix)

# built-in data
head(mtcars, 3)

#######################################
######## Data Frame & List ############
#######################################
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet",           "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

my_list[[3]][,"cyl"]

######################################
######### Comparing vectors ##########
######################################
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

views<-matrix(c(linkedin, facebook), nrow=2, byrow = T)
views<13
views[1,] > 10 & views[2,] <10

number<-120
if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}

result


###############################
############# Loops ###########
###############################
speed <- 64

while(speed>30){
  print("Slow down!")
  speed<-speed-4
}

##############################
######### Functions ##########
##############################

pow_two<-function(number){
  number^2
}

pow_two(2)

hello<-function(){
  return(c("Hey there!", TRUE))
}

hello() 

oil_prices <- list(2.37, 2.49, 2.18, 2.22, 2.47, 2.32)

triple<-function(x){
  x*3
}

lapply(oil_prices, triple)

pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

split_math<-strsplit(pioneers, ":")
lapply(split_math, tolower)

temp <- list(c(3,7,9,6-1),c(6,9,12,13,5),c(4,8,3-1,-3),c(1,4,7,2,-2),c(5,7,9,4,2),c(-3,5,8,9,4),c(3,6,9,4,1))

sapply(temp, min)
vapply(temp, min, FUN.VALUE = numeric(1))
