# Import dependencies
library(dplyr)

# Import data
mpg_df <- read.csv("F:/My Drive/Documents/Bootcamp Files/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# Perform the multiple linear regression
fit <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_df)

# Summarize the findings
summary(fit)

# Generate confidence intervals
confint(fit)

# Import coil data
coil_df = read.csv("F:/My Drive/Documents/Bootcamp Files/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# Summarize the coil PSI data
total_summary <- coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Summarize the lot data
lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median  = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Do a T-Test on all the lot data
total_T_test <- t.test(coil_df$PSI, mu = 1500)

# Do a lot by lot T-Test
Lot_1 <- coil_df %>% subset(Manufacturing_Lot == "Lot1")
Lot_2 <- coil_df %>% subset(Manufacturing_Lot == "Lot2")
Lot_3 <- coil_df %>% subset(Manufacturing_Lot == "Lot3")

ttest_1 <- t.test(Lot_1$PSI, mu = 1500)
ttest_2 <- t.test(Lot_2$PSI, mu = 1500)
ttest_3 <- t.test(Lot_3$PSI, mu = 1500)

# Print statements to make images from
total_T_test

ttest_1

ttest_2

ttest_3