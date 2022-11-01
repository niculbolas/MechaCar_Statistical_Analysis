# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables which provide a non-random amount of variance would be the vehicle length and ground clearance variables.  If you look at the below summary you will see Pr(>|t|) values of 2.60e-12 and 5.21e-08 respectively.  In general for things to be considered statistically significant we look for the p-values cutoff of 0.05.  These two variables with their extremely low values are both well below 0.05.  Thus these 2 variable have a significant impact on mpg.

On the other hand, the other variables vehicle weight , spoiler angle, and AWD do contribute significant amounts of non-random variance.  If you look at their Pr(>|t|) values you will see that they are 0.0776, 0.3069, and 0.1852 which are all well above the 0.05 cutoff.  Thus, these variables are unlikely to have a significant impact on mpg.

- Is the slope of the linear model considered to be zero? Why or why not?
With an R-squared value of 0.7149 the data makes a pretty strong fit for a linear model.  Since the value of R-squared is so close to one, it is a reasonable assumption that the slope is non-zero.  A model with an R-squared value close to 0 would indicate that the best fit line is horizontal and that is not the case here.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
Not really.  Although this model had an adjusted R-squared value of 0.6825 I think that this model would need to be tweaked to be more useful as a predictor.  My first recommendation would be to drop the spoiler angle data entirely.  Does spoiler angle have an impact on mpg?  Sure.  It is statistically significant?  Not really.  The data would be cleaner without it.

My 2nd recommendation is to drop the AWD column as well.  This is binary data and thus isn't really helping our model all that much.  What I would do instead is to run a regression on AWD and non-AWD vehicles separately and work with two models.

### MPG Prediction Results:
![](deliverable1_results.jpg)
