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
######## Data Frame ###################
#######################################
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet",           "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
