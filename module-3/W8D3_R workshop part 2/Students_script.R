# Using the data from the spam email data file and using logistic regresion, create a predictive model to know if an email is spam or not. Use all the variables. (What are the significant variables and which is their order of importance?)

# Step 0: Importing libraries / installing packages:
install.packages("caTools")
install.packages("questionr")
install.packages("car")
library(caTools)
library(questionr)
library(car)

# Step 1: import the data and read the documentation 
# https://vincentarelbundock.github.io/Rdatasets/datasets.html

spam <- read.csv("/cloud/project/spam7.csv")

# Step 2: Exploratory analysis

describe(spam)
summary(spam)
str(spam)

# Step 3: Rename "crl.tot"

names(spam)[names(spam) == "crl.tot"] <- "lencap"

# Step 4: Splitting the data into train / test
# because we have no NA values. We need to use all the variables. That is why we can split now already....
# we can plot some things off course before if we would like to do that.... (Idea for this afternoon)

# Create three different variables. Two for datasets and third "split"
split <- sample.split(spam, SplitRatio = 0.8)
train <- subset(spam, split=="TRUE")
test <- subset(spam, split=="FALSE")

# Step 5: Training the model. yesno is the dependant variable and the others are the independant. We need to recode yesno, redo the train / test and then run the model. 
# first recode the output variable (yes/no)
spam$yesno <- recode(spam$yesno, " 'y'=1; 'n'=0 ")

train <- subset(spam, split=="TRUE")
test <- subset(spam, split=="FALSE")

# untill here it was data cleaning, all needed before we can make the model

mymodel <- glm(yesno ~ lencap+dollar+bang+money+n000+make, data = train, family = "binomial")

summary(mymodel)

# Comment: 

# What are the significant variables and which is their order of importance?
# dollar is the strongest variable, followed by n000, then money, then bang, then lencap
# the variable make is not significant

# Step 6: Running the test data through the model

res <- predict(mymodel, test, type = "response")

# Step 7: Creating the confusion matrix to validate the model

confmatrix <- table(Actual_value=test$yesno, Predicted_value= res> 0.5)
confmatrix

# Step 8: Calculating the accuracy of our model

(confmatrix[[1,1]]+confmatrix[[2,2]]) / sum(confmatrix)

# So with 82% confidence level the model will predict the incoming email correctly as spam. 

# step 9, maybe leave make out.

mymodel2 <- glm(yesno ~ lencap+dollar+bang+money+n000, data = train, family = "binomial")
res2 <- predict(mymodel2, test, type = "response")
confmatrix2 <- table(Actual_value=test$yesno, Predicted_value= res2> 0.5)
confmatrix2
(confmatrix2[[1,1]]+confmatrix2[[2,2]]) / sum(confmatrix2)

# leaving the variable make out does not have effect...

