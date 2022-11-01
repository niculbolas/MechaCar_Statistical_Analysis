# Import dependencies
library(dplyr)

# Import data
inputdata <- read.csv("F:/My Drive/Documents/Bootcamp Files/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# Perform the multiple linear regression
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = inputdata)

# Summarize the findings
summary(fit)

# Generate confidence intervals
confint(fit)