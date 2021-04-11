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

## Summary Statistics on Suspension Coils

## T-Tests on Suspension Coils

## Study Design: MechaCar vs Competition

In designing a study of performance of the MechaCar vs Competition, we could look at MotorTrend, which is a highly coveted annually awards the "Car of the Year" to the cream of
the crop. For 2021 models, they selected from a field that included, on the "low end," a $21K Nissan all the way up to a $200K Porsche by normalizing their evaluations based on
the vehicle's own merits, as judged subjectively and via instrument tests, by six specific criteria.  These criteria are:
1.) Advancement in Design
2.) Engineering Excellence
3.) Efficiency
4.) Safety
5.) Value
6.) Performance of Intended Function

While this method results in a very competitive and comprehensive annual review of all cars to award the "Car of the Year," for our purposes, it may be more appropriate to base
our study on instrument tests and not as much on subjective measures as aesthetics and predicted retained value.  While such factors very much play into a consumer's preferences
and decisions to purchase, we can more readily obtain data such as those compared between vehicles in a similar class of the MechaCar on factors, as suggested in Consumer Reports, such as:
1.) Base MRSP range
2.) MPG a.) overall, b.) city and c.) highway
3.) Performance-acceleration a.) 0 to 30mph (time) b.) 0 to 60mph (time) c.) 45-65 mph d.) quarter-mile (time, speed)
4.) Performance-breaking a.) from 60 mph dry b.) from 60 mph wet
5.) Safety features-check for AEB, etc.
6.) Safety features-crash ratings
7.) Ride comfort-a.)suspension coils b.) seat comfort/leg room/head room, etc.

A one-way ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups. (e.g., fuel efficiency of different cars based on vehicle class).
A two-way ANOVA does the same thing, but for two different independent variables (e.g., vehicle braking distance based on weather conditions and transmission type).


