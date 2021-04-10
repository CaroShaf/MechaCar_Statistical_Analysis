# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Summary Statistics from Linear Model of MPG Prediction of MechaCar Prototypes  [https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/ce20b23983b91720ff674b8bcc6649ea15defe71/images/MechaCarSummaryStats.png]

From this screen shot of our RStudio/RScript analysis, we can see that our linear regression model gives the r-squared value of 0.7149, which means that roughly 72% of all MPG
predictions will be correct when using this linear model. In addition, the p-value of our linear regression analysis is 5.35 x e-11, which is much smaller than our assumed
significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results,
ground clearance and vehicle length (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the ground
clearance and vehicle length have a significant impact on MPG.

All of these factors together provide a reasonably effective linear model, though one that could possibly be improved.
