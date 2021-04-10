library(dplyr)
df <- read_csv("mpg_modified.csv")

lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data=df)

summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data=df))

df2 <- read_csv("Suspension_Coil.csv")

#create total summary table
total_summary <- df2 %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI),  .groups = 'keep')

#create lot summary table
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI),  .groups = 'keep') 

# use t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500
t.test(df2$PSI, mu=1500)


t.test(subset(df2, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

t.test(subset(df2, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

t.test(subset(df2, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
       
       