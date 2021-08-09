# MechaCar_Statistical_Analysis

## Overview/Purpose
In this challenge, we are helping Jeremy analyze and interpret data using R programming.  This data will be used to help his company (AutosRUs) make decisions about their services. 

### Linear Regression to Predict MPG
In this analysis, I was given a data set of 50 cars.  Each car had its height, weight, mpg, spoiler angle, ground clearance, and AWD information provided.  I put each variable into a correlation matrix to quickly determine if any correlation could be determines.  Here is the resulting matrix:

TAKE A PICTURE OF RESULTS

Each number in the matrix shows the amount of correlation between the variables in the rows and columns.  The mpg has a weak correlation with ground clearance (r value of 0.33) and a moderate correlation with the vehicle length (r value of .61).  These are the only two variables that provided a non-random amount of variance to the mpg values in the dataset.  When graphs are produced individually, you can see the slight and moderate correlation.  If we create a linear regression model for each of these variables individually, it will produce coefficients that can be used to create equations in slope-intercept form.  These equations have a slope of 4.67 for the vehicle length and 2.02 for the ground clearance.  When we combine this information with the r values, we can state that the slope will be non-zero.  Our confidence in that statement is much greater with the vehicle length because of the higher r value.  
Next, I did a multiple linear regression on the data.  It is presented here:

The summary of the data also shows a multiple R-squred value of .7149.  This tells us that there is a 71% that the increase/decrease in the mpg is due to the factors listed in the table.  According to the data the other 29% comes from factors/data that is not given in this data set.  Overall, the linear regression model is decently effective at predicting mpg in the car prototypes.  More information/variables will be needed to determine mpg with greater accuracy.

