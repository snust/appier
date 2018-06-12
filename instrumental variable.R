library(AER)

# Exercise 1

data("PSID1976")

# Exercise 2

summary(PSID1976)

# Exercise 3

model1 <- lm(log(wage)~education, data = PSID1976)

# Exercise 4

model2 <- lm(log(wage)~education, data = PSID1976[PSID1976$participation =="yes",])

summary(model2)

# Exercise 5

plot(PSID1976$education[PSID1976$participation == "yes"], log(PSID1976$wage[PSID1976$participation == "yes"]))
abline(model2)

# Exercise 6

model3 <- lm(education~feducation, data = PSID1976[PSID1976$participation =="yes",])

# Exercise 7

model4 <- lm(log(wage) ~ fitted.values(model3), data = subset(PSID1976, participation=="yes"))
summary(model4)

# Exercise 8

model5 <- ivreg(log(wage) ~ education | feducation, data = PSID1976[PSID1976$participation == "yes",])

summary(model5)

# Exercise 9

confint(model2, 'education', level = 0.9)

confint(model5, 'education', level = 0.9)

# Exercise 10

model6 <- lm(education ~ meducation, data = PSID1976[PSID1976$participation == "yes",])

summary(model6)


model7 <- ivreg(log(wage) ~ education | meducation, data = PSID1976[PSID1976$participation == "yes",])

summary(model7)
