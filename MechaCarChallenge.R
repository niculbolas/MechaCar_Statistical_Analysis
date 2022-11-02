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

