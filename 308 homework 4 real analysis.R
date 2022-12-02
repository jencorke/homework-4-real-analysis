## Jennifer Corke
## Homework 4 Real Assignment
## November 11 2022


## Today we will be discussing the Birthday Problem
## This is a common notion in the context of probability...
## but what about coding this?


##The problem states:
##if you have  people together, and assume birthdays are equally 
## distributed across all 365 days in a year 
## then what is the probability at least two will share a birthday? 

## NOTE: t turns out, once n>=23 , this probability exceeds 0.5.

## In this particular homework, we will study the distribution 
## of how many days match (or repeat) given a collection of
## individuals.

## Stated Problem:
## Write a function in R that randomly generates a number 
## of birthdays and determines how many matches there are 
## Use this function to study the distribution of the number 
## of matches as a function of the number of people that are
## together.

## Some other notes:
## the default value is 23
## Julian days will be used
##To determine the number of matches, the following functions in R may be helpful:
##    unique()
##    duplicated()
##For plotting you can use hist(), but it is not quite correct given the context. You should use a combination of:
##    table()
##    barplot()

## Let's begin!

## First create a function
matches_of_birth <- function(num_people=23) {
  dateofbirth <- sample(1:365, size=num_people, replace=TRUE)
  length(unique(dateofbirth[duplicated(dateofbirth)]))
}

## First, we will simulate:
##seed remains constant!
## number of people changes!

set.seed(314159)
result10 <- sapply(rep(10, 100000), matches_of_birth)

set.seed(314159)
result20 <- sapply(rep(20, 100000), matches_of_birth)

set.seed(314159)
result30 <- sapply(rep(30, 100000), matches_of_birth)

set.seed(314159)
result40 <- sapply(rep(40, 100000), matches_of_birth)

set.seed(314159)
result50 <- sapply(rep(50, 100000), matches_of_birth)

set.seed(314159)
result60 <- sapply(rep(60, 100000), matches_of_birth)

set.seed(314159)
result70 <- sapply(rep(70, 100000), matches_of_birth)

set.seed(314159)
result80 <- sapply(rep(80, 100000), matches_of_birth)

set.seed(314159)
result90 <- sapply(rep(90, 100000), matches_of_birth)

set.seed(314159)
result100 <- sapply(rep(100, 100000), matches_of_birth)

## Next, we will create a summary of each of these simulation runs.

summary(result10)
summary(result20)
summary(result30)
summary(result40)
summary(result50)
summary(result60)
summary(result70)
summary(result80)
summary(result90)
summary(result100)


## Finally, we will create a bargraph for each simulation run.

help(barplot) 


barplot(table(result10))
barplot(table(result20))
barplot(table(result30))
barplot(table(result40))
barplot(table(result50))
barplot(table(result60))
barplot(table(result70))
barplot(table(result80))
barplot(table(result90))
barplot(table(result100))

## From looking at the barplot of result 10, we can see that the distribution is very right skewed.
## However, as the number of people increases by 10, the distribution becomes more normal until it
## reaches 100 people which is very normally distributed as a bell curve.









