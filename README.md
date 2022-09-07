# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![statistical summary](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/summary-statisitcs.jpg)


1. The most significant variables in the dataset which show a non-random effect on the MPG of the MechaCar are the Vehicle Length and the Ground Clearance. As shown in the image above, a linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8. The intercept was also statistically significant, indicating that there are likely other factors, not included in the dataset, that have a strong impact on the MPG.
2. The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11, shown in the picture above, is lower than even an extreme level of significance, and therefore the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.
3. Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149 indicates that the model is 71% accurate, however, I feel it could probably do better.

## Summary Statistics on Suspension Coils

![total summary](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/total-summary.jpg)

![lot summary](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/lot-summary.jpg)

While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots. As shown in the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.


## T-Tests on Suspension Coils

![t-test whole](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/t-test%20whole.jpg)

1. A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean, and the p-value is not low enough (0.0603) for us to reject the null hypothesis.

![lot 1](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/t-test-lot-1.jpg)

2. A review of the results of the T-test for the suspension coils for Lot 1 shows that they are not statistically different from the population mean, and the p-value is not low enough (1) for us to reject the null hypothesis.

![lot 2](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/t-test-lot-2.jpg)

3. A review of the results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the p-value is not low enough (0.6072) for us to reject the null hypothesis.

![lot 3](https://github.com/tsmtruong/mechacar_statistical_analysis/blob/main/Resources/t-test-lot-3.jpg)

4. A review of the results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean, and the p-value is just low enough (0.0417) for us to reject the null hypothesis. This lot may be need to be discarded, or at least more closely evaluated.

## Study Design: MechaCar vs. Competition

There are many factors that consumers take into consideration when evaluating a car to purchase. However, in a world where ridesharing is becoming more ubiquitous and it's easy and cheap to get around in other people's vehicles, customers looking to purchase a car are looking for more than just a conveyance. They will be looking to buy a car that is an economical means to regularly transport themselves and their items on a reliable, regular basis.

Metric to test
To narrow down our test, we should evaluate MechaCar's carrying capacity, in cubic inches, in comparison to various competitors' vehicles.

Null and Alternate Hypothesis
H0: MechaCar prototypes' average carrying capacity is similar to competitor's vehicles in the same vehicle class Ha: MechaCar prototypes' average carrying capacity is statistically above or below that of competitor vehicles.

Statistical Test Used
The best statistical test for this would be two-sample t-tests.

What data is needed
We would need to gather cubic space data from the carrying compartments of all MechaCar prototypes, as well as from all major competitor vehicles.
