library(ggplot2)
library(gridExtra)
library(FSA)
library(multcomp)
library(car)
library(fitdistrplus)
library(dplyr)

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

###################################
########### ANOVA #################
###################################
Summarize(income ~ agecat, data = credit, digits = 0)
ggplot(credit, aes(x = agecat, y = income)) + geom_boxplot()

ggplot(credit, aes(x = agecat))+geom_bar()

leveneTest(income ~ agecat, data = credit) #checking if variances are the same
anova<-aov(income ~ agecat, data = credit) #by default it takes equal variances
summary(anova)

oneway.test(income ~ agecat, data = credit, var.equal=FALSE) #takes into account different variance


#We see that they are different, but whch one of them?
TukeyHSD(anova)
pairwise.t.test(credit$income, credit$agecat)

filtered<-filter(credit, agecat=="25-34" | agecat=="18-24")
t.test(data = filtered, income ~ agecat)

###############################
###### Non-parametric tests ###
###############################
America <- countries[countries$Region == "America", ]
summary(America$Public.Debt.Perc.of.GDP)

ggplot(America, aes(x = Public.Debt.Perc.of.GDP)) +
  geom_histogram(bins = 9)+
  geom_vline(xintercept = 45, col = "red")

wilcox.test(America$Public.Debt.Perc.of.GDP, mu = 45,
            alternative = "two.sided")




