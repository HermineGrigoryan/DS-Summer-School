library(ggplot2)
library(gridExtra)
library(FSA)
library(multcomp)
library(car)
library(fitdistrplus)

countries<-read.csv("Intro to Inferential Statistics//Countries.csv")
credit<-read.csv("Intro to Inferential Statistics//Credit.csv")
str(credit)

##################################################
################ Hypothesis testing ##############
##################################################

# mu=49 ?
summary(credit$age)

ggplot(credit)+geom_histogram(aes(age), bins=20)

t.test(x=credit$age, mu=49)
t.test(x=credit$age, mu=49, alternative = "greater")
t.test(x=credit$age, mu=49, alternative = "less", conf.level = 0.99)

####################################
########### Paired test ############
####################################

str(countries)
Summarize(data = countries, Unemployment ~ Region, digits = 2)
ggplot(countries)+geom_boxplot(aes(y=Unemployment, x=Region))
ggplot(countries)+geom_histogram(aes(Unemployment))+facet_wrap(~Region)

t.test(data = countries, Unemployment ~ Region) #Welch Test
t.test(data = countries, Unemployment ~ Region, var.equal=T) #Traditional T-test

Summarize(data = countries, Business.Freedom ~ Region, digits = 2)
ggplot(countries, aes(x = Region, y = Business.Freedom)) + geom_boxplot()
t.test(data = countries, Business.Freedom ~ Region, alternative = "less")
