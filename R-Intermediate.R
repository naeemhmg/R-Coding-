# Comparison of logicals
TRUE == FALSE

# Comparison of numerics. != sign of inequility 
-6*14 != 17-101
# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric\
TRUE == 1

#Remember that for string comparison, R determines the 
#greater than relationship based on alphabetical order. 
#Also, keep in mind that TRUE is treated as 1 for arithmetic, 
#and FALSE is treated as 0. Therefore, FALSE < TRUE is TRUE.
# Comparison of numerics
-6 * 5 +2 >= -10+1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

#On which days did the number of LinkedIn profile views exceed 15?
#When was your LinkedIn profile viewed only 5 times or fewer?
#When was your LinkedIn profile visited more often than your Facebook profile?

names(linkedin) <- days
names (facebook) <- days
high_view <- linkedin > 15
high_view
best_day <- linkedin[high_view]
best_day
least_view <- linkedin <= 5
least_view
worst_days <- linkedin [least_view]
worst_days
link_Sum <- sum(linkedin)
face_sum <- sum (facebook)
popular <- link_Sum > face_sum
popular 


views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
colnames (views) <- days 
rownames (views) <- c("facebook", "Linkendin")
views
# When does views equal 13?
views_thirteen <- views == 13
best_days <- views [views_thirteen]
best_days
# When is views less than or equal to 14?
views_four <- views <=14
bestest_views <- views [views_four]
bestest_views

#In this exercise, you'll be working with the last variable. This variable equals the last value of the linkedin vector that you've worked with previously. 
#The linkedin vector represents the number of 
#LinkedIn views your profile had in the last seven days, remember? Both the variables linkedin and last have already been defined in the editor.

# if we want to get idea about last values than 
# a bulit in function tail can be used along with number of values we want to fetch from tail

last <- tail(linkedin, 1)
last
# Is last under 5 or above 10?
last < 5 | last > 10

#When did LinkedIn views exceed 10 and did Facebook views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
#When were one or both of your LinkedIn and Facebook profiles visited at least 12 times?
#When is the views matrix equal to a number between 11 and 14, excluding 11 and including 14?

linkedin < 10 & facebook > 10
linkedin >= 12 | facebook >= 12
views > 11 & views <= 14

#Instead of recording the number of views for your own LinkedIn profile, suppose you conducted a survey inside the company you're working for. 
#You've asked every employee with a LinkedIn profile how many visits their profile has had over the past seven days. 
#You stored the results in a data frame called li_df. This data frame is available in the workspace; type li_df in the console to check it out.
li_df <- read.csv("Lin.csv", header = TRUE, sep = "")
li_df
# Select the second column, named day2, from li_df: second
second <- li_df$day2
second
#Use second to create a logical vector, that contains TRUE if the corresponding number of views is strictly greater than 25 or strictly lower than 5 and FALSE otherwise. Store this logical vector as extremes.
extremes <- second > 25 | second < 5
sum(extremes)

number <- 4
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
print(result)

li <- 15
fb <- 9
# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li+fb
}
sms

# Setting Whil Loop in the condition
# The condition of the while loop should check if speed is higher than 30.
#Inside the body of the while loop, print out "Slow down!".
#Inside the body of the while loop, decrease the speed by 7 units. 
#This step is crucial; otherwise your while loop will never stop.

speed <- 64

while (speed > 30){
  print("slow down!")
  speed <- speed -7
}

# Lets make the driving assistant more handy
#If the speed is greater than 48, have R print out "Slow down big time!", and decrease the speed by 11.
#Otherwise, have R simply print out "Slow down!", and decrease the speed by 6.

# Extend/adapt the while loop

while (speed > 30) {
  print(paste("Your speed is", speed))
  speed <- speed -7
  if (speed > 48){
    print ("slow down big time!")
    speed <- speed -11
  }
}

# Adapt the while loop such that it is abandoned when the speed of the vehicle is greater than 80. 
#This time, the speed variable has been initialized to 88; keep it that way.

speed <- 67
# Initialize the speed variable
speed <- 48
# there is use of "break" in this loop. The break function will break the loop as the 
# condition will be true. 
while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}
#Finish the while loop so that it:
#prints out the triple of i, so 3 * i, at each run.
#is abandoned with a break if the triple of i is divisible by 8, but still prints out this triple before breaking.


i <- 2

while (i<= 10){
  print (i*3)
  if ((i*3) %% 8==0) {
    break
  }
  i <- i+1
}

# in the following lines, we applied the for loop on the vector 
# two different ways are used to apply the for loop on the vector 


linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# 1st way to apply the loop over vector is following. This method is simple version 

for (v in linkedin){
  print (v)
}
    
# this is second method to apply loop over the vector. 
# In this method length function is used. 
for (i in 1:length(linkedin)){
  print(linkedin[i])
}
    
# Application of for loop over list is quite simple and just like vector with only one difference
roll <- list (12, 13,4,6,16,15,18, 19, 16)
# this loop is quite similar like the loop which we have used in for the vector
for (i in roll){
  print (i)
}

# In second type of loop there is a small differene, have a look on it 
for (i in 1:length(roll)){
  print (roll[[i]]) # there is use of double square brackets in this type of loop for list
}

# Lets apply the loop function on some real time example. We have data of Islamabad population, twon 
# and its capital status. Now lets apply loop on this data
islamabad <- list(pop = 8405837, boroughs = c("I-10", "F-10", "F-11", "G-10", "G-12"), capital = TRUE)
# The for loop will show us all catagories data seperatly
for(i in islamabad){
  print(i)
}

for (i in 1:length(islamabad)){
  print (islamabad[[i]])
}

# The following is an example to apply for loop on the matrix. 
# Recall previously, we have defined one matrix having facebook and linkinden data 
# We have screend the linkend data and facebook data in the matrix through this loop
# on those rows having views more than 10 are displayed as TRUE while rest are as 
# FALSE. 

views

for (i in 1:nrow(views)) {
  for (j in 1:ncol(views)) {
    print(paste("On row", i, "and column", j, "the board contains", views >10))
  }
}


# lets apply the while loop with conditions 
linkedin

# We will apply the for loop with if condition on linkedin data 
# if the views are more than 10 than program will display "You are popular"
# if the views are less than 10 than program will display "Be more visible"

for (i in 1:length(linkedin)) {
  if (linkedin[i] > 10){
    print (paste("You are very popular", "Your views are", linkedin[i]))
  } else {
    print (paste("Please be more visible","Your views are",linkedin[i]))
  }
}

# Use of Next and break functions in loop. The break function will help to break the loop


for (i in 1:length(linkedin)){
  if (linkedin[i] < 16) {
    print (paste ("You are very popular and your views are", linkedin[i]))
    break
  } else {
      print (paste("Be more visible and your views are,", linkedin[i]))
  } 
  if (linkedin[i] > 16){
    print (paste("This unusual activity and your views are", linkedin[i]))
    break
  } 
  if (linkedin[i] < 8){
    print("This is too bad and your views are ", linkedin[i])
    next()
  }
  
}


# in the following code we have used the loop to count the number of alphabet in the string
# there is a vector rquote. 
rquote <- "r's internals are irrefutably intriguing"
# The rquote is spilted into alphabets using strsplit fnction
chars <- strsplit(rquote, split = "")[[1]]
chars
rcount<- 0
for (char in chars){
  if (char =="r") {
    rcount <- rcount+1
  }
}  


rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
}

# Print out rcount
rcount


