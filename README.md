# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

I created a linear model that predicts the mpg (dependent variable) of MechaCar vehicles with Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance and All Wheel Drive as the comparison variables (also know as the independent variables). See below to see the summary of the results of my R-Script. 

![Linear_Regression.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/Linear_Regression.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
When examining the results, vehicle length and ground clearance were two of the variables that provided non-random amount of variance to the mpg values in the data set. It basically shows that the length of the vehicle and the ground clearance have a significant impact on mpg for Mechacar vehicles. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero. The p-value of 5.35 e-11 is much smaller than the significance level of 0.05, which means there is sufficient evidence that the null hypothesis should be rejected. 

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model predicts the mpg of MechaCar prototypes effectively because the r-squared value is 0.715 or in other words 71.5% of the variability of our dependent variable of mpg is explained using this linear model. 

## Summary Statistics on Suspension Coils

I was tasked with creating two dataframes with summary statistics on MechaCar Suspension Coil's PSI overall, as well by on a lot by lot basis. MechaCar has design specifications for their suspension coils that require that the variance of the suspension coils must not exceed 100 lbs per square inch. 

![Total_Summary.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/Total_Summary.png)

As you can see from the total summary statistics, in the image above, MechaCar is meeting design specifications overall, when we look at the lots in total. The variance of 76.23459 fits within the specifications. But it's important to look at this info a lot by lot basis. 

![Lot_Summary.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/Lot_Summary.png)

When you look at each of the lots individually in the image above , there are some different stats. Lot 1 and Lot 2's variances meet the design specifications. When you look at Lot 3, though, with a variance of 170.2861224, this is not meeting specifications. 

## T-Tests on Suspension Coils

![T-test_All.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/T-test_All.png)

When looking at the results of the T-test for the MechaCar suspension coils across the total manufacturing lots, you can see from the image above that they are not statistically different from the population mean. With a p-value of 0.06028, it's not low enough to reject the null hypothesis. 

![T-test_Lot1.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/T-test_Lot1.png)

The T-test results for suspension coils in Lot 1 are not statistically different from the population mean and has a p-value of 1, which makes it not low enough to reject the null hypothesis. 

![T-test_Lot2.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/T-test_Lot2.png)

The T-test results for suspension coils in Lot 2 are not statistically different from the population mean and has a p-value of 0.6072, which makes it not low enough to reject the null hypothesis. 

![T-test_Lot3.png](https://github.com/melaniekelsey/MechaCar_Statistical_Analysis/blob/main/resources/T-test_Lot3.png)

The T-test results for suspension coils in Lot 3 is slightly statistically different from the population mean and has a p-value of 0.04168, which makes it just low enough to reject the null hypothesis. 

## Study Design: MechaCar vs Competition

If we were to perform a statistical study to quantify how Mechacar vehicles perform again competitor vehicles, the main metric I would focus on would be fuel efficiency.

### Fuel Efficiency
When people go on a car search, looking at fuel efficiency is often a key factor for car buyers. People want to know how far they can get on a fuel tank of gas. Fuel efficient cars will go farther and cost less in gas costs in the long run. This would examine whether Mechacar vehicles are better than other competitor vehicles when it comes to fuel efficiency. 
I would recommend using an ANOVA test, which compares the means of a continuous numerical variable (fuel efficiency) across a number of groups (Mechacar and their competitors). We would need to get fuel efficiency data for our competitor vehicles. 
The null hypothesis would be that the average(mean) of fuel efficiency of all groups is equal. The alternate hypothesis would be that at least one (or more) average of fuel efficiency is different from the other groups. 
If the statistics showed we should accept the null hypothesis, it would be a good starting point to determine where Mechacar lands against it's competition. 
