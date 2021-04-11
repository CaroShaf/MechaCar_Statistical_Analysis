# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Summary Statistics from Linear Model of MPG Prediction of MechaCar Prototypes  [https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/ce20b23983b91720ff674b8bcc6649ea15defe71/images/MechaCarSummaryStats.png]

From this screen shot of our RStudio/RScript analysis, we can see that our linear regression model gives the r-squared value of 0.7149, which means that roughly 72% of all MPG
predictions will be correct when using this linear model. In addition, the p-value of our linear regression analysis is 5.35 x e-11, which is much smaller than our assumed
significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our 
results, ground clearance and vehicle length (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the 
ground clearance and vehicle length have a significant impact on MPG.

All of these factors together provide a reasonably effective linear model, though one that could possibly be improved by considering other variables's non-random impact on MPG.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As can be seen in the
Total Summary graphic below, the current manufacturing data does meet this design specification for all manufacturing lots in total, as the variance is approximately 62.3 lbs/sq 
in, far less than 100 lbs/sq in. 
Total Summary https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/196c3bf532b017e2b3a6d95807df1c4e57f8a641/images/total%20summary.png

However, each lot individually tells a different story, as can be seen in the Lot Summary table below.  Lot 1 has <1 lbs/sq in and Lot 2 has <7.5 lbs/sq in, both of which are 
far less than 100 lbs/sq in.  But in Lot 3, the variance is approximately 170.3 lbs/sq in, which is far greater than the maximum 100 lbs/sq in.  All suspension coils from Lot3 
should be replaced immediately and measurements repeated with new suspension coils in the cars that have replaced suspension coils.
Lot Summary https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/196c3bf532b017e2b3a6d95807df1c4e57f8a641/images/lot%20summary.png


## T-Tests on Suspension Coils
summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
There is a summary of the t-test results across all manufacturing lots and for each lot

Lot 1 T-test https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/196c3bf532b017e2b3a6d95807df1c4e57f8a641/images/lot1%20t-test.png
Lot 2 T-test https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/196c3bf532b017e2b3a6d95807df1c4e57f8a641/images/lot2%20t-test.png
Lot 3 T-test https://github.com/CaroShaf/MechaCar_Statistical_Analysis/blob/196c3bf532b017e2b3a6d95807df1c4e57f8a641/images/lot3%20t-test.png

 the p-value is greater than 0.05, the data is considered normally distributed.

## Study Design: MechaCar vs Competition

In designing a study of performance of the MechaCar vs Competition, we could look at MotorTrend, a highly coveted annual award which goes to the cream of the crop, "Car of the
Year." For 2021 models, they selected from a field that included, on the "low end," a $21K Nissan all the way up to a $200K Porsche by normalizing their evaluations based on
the vehicle's own merits, as judged subjectively and via instrument tests, by six specific criteria.  These criteria are:

1.) Advancement in Design
2.) Engineering Excellence
3.) Efficiency
4.) Safety
5.) Value
6.) Performance of Intended Function

While this method results in a very competitive and comprehensive annual review of all cars to award the "Car of the Year," for our purposes, it may be more appropriate to base
our study on instrument tests and not as much on subjective measures as aesthetics and predicted retained value and also limiting to vehicles in an equivalent class as the
MechaCar. (The competition must first be identified.)  While such factors very much play into a consumer's preferences and decisions to purchase, we can more readily obtain data
such as those compared between vehicles in a similar class of the MechaCar on factors, as suggested in Consumer Reports or Edmunds, such as:

1.) Base MRSP range
2.) MPG a.) overall, b.) city and c.) highway
3.) Performance-acceleration a.) 0 to 30mph (time) b.) 0 to 60mph (time) c.) 45-65 mph d.) quarter-mile (time, speed)
4.) Performance-breaking a.) from 60 mph dry b.) from 60 mph wet
5.) Safety features-check for AEB, etc.
6.) Safety features-crash ratings
7.) Ride comfort-a.)suspension coils b.) seat comfort/leg room/head room, etc.

Even Consumer Reports, however, covers a lot of subjective ground.  Many of the above mentioned categories for which instrument-derived data is recommended can be fleshed out
with qualitative data from road tests, such as driving experiences that could include smoothness of shifting, engine noise and suspension performance on varying road or
emergency conditions. Ordinal or nominal categorical data could most certainly be collected in subjective areas and analyzed comparatively by examining third-party ratings (such
as Consumer Reports) in contingency tables through a chi-squared test for each competitor and the MechaCar itself.  In fact, Consumer Reports is a good example of how overall
scores for vehicles are calculated and compared, most likely using similar analysis on both subjective and instrument-derived data.

For categorical data (such as ranges of speeds, or type of driving to determine MPG) that can be obtained for factors represented in the list above, a one-way ANOVA can be used
to test the means of a single dependent variable across a single independent variable with multiple groups. (e.g., fuel efficiency of different cars based on vehicle class, or
breaking and acceleration times of different cars in competitively classed vehicles).  A two-way ANOVA can do the same thing, but for two different independent variables (e.g., 
vehicle braking distance based on weather conditions and transmission type, again in the same vehicle class).

Additionally, using one performance factor, such as 0-60 mph acceleration times, viewed against fuel economy, plotted for like drive trains and like displacement, would be a
great way to visually compare performance of the MechaCar against its competitors, and could be easily completed in ggplot2 with the relevant data.  A linear regression could be
performed on the same data set with the drive train and displacement being a dependent variable.



