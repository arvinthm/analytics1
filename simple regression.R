#regression
#simple linear

data(women)
women
names(women)
str(women)

cov(women$height,women$weight)

cor(women$height,women$weight)


plot(x=women$height, y=women$weight,'b')

abline(lm(weight ~ height, data=women))
#abline - best fit line
names(women)

fit1=lm(weight ~ height, data=women) #creating a model
summary(fit1) #summary of the model

#linear model - lm(dependent variable ~ independent variable)
# output
# check p-value < 0.05 is significant
# multiple r^2 tells the dependent variable is how much depended on independent variable
# residual standard error - error around the prediction line
# individual p values
# y=mx+c c=-87.51667 m=3.45
# residuals (difference between the predicted values and actual values(the already existent values))
# f-stat 

attributes(fit1)

coef(fit1)
# Y=-87 + 3.45*X

range(women$height)
# predicting range

(new1=data.frame(height=c(58:72)))
new1
(p1=predict(fit1, newdata = new1))
x=cbind(p1,new1)
x

colnames(x)[1]='weight'
x

