# Statistical Models {#models480}

Statistical models are extremely powerful tools for exploring relationships between variables in datasets. Many of the advanced predictive algorithms used by Google, Amazon, Netflix, and other companies to make personalized recommendations for you are statistical models. They use what others have watched, purchased, or searched for in the past to predict what you want or would like. 

Statistical models can be misinterpreted and misused very easily too. The ONLY thing they measure is the strength of the relationships between measured variables. They do not prove the two variables are actually connected. This is why you often hear this phrase from scientists:

> Correlation does not equal causality.

We use statistical models many different ways in biology. Two of our most common modeling tasks are to: 

* Find out whether two variables are __potentially__ related to each other; and
* See if changes in an independent variable predict changes in a dependent variable. 

In biology lab courses, the two statistical models you are most likely to use are __correlation__ and __linear regression__. They are related methods but we use them in slightly different ways.


## Correlation

Correlation is an estimate of the relative strength of the association between two variables (independent and dependent) that you have measured randomly from a population. It does not tell you anything about potential causal connections between the measured variables, only how closely they are associated.

This video is a good introduction: [Video Intro to Correlation](https://youtu.be/GtV-VYdNt_g)


### An Example of Correlation

You and a friend a walking through an apple orchard in the autumn. You notice that apples lying on the ground are different sizes even though they are from the same tree. You say you think that the apples have different sizes depnding on how high up they grew. Your friend disagrees; they say bigger fruits grow on branches that have a larger diameter. 

You decide to test it. Each of you picks 6 apples from the tree, and measures the diameter of the branch and the height above ground. These are your data:

__Table 1.__ Weight of apples versus branch diameter and height above ground.

|Branch diameter (cm)|Ht. above ground (m)|Apple wt. (g)|
|:-:|:-:|:-:|
|2.4|4.2|93|
|7.8|12.9|167|
|6.3|3.4|73|
|3.1|9.1|139|
|5.1|6.2|127|
|4.5|14.2|170|
|2.8|11.6|151|
|3.8|12.7|159|
|4.6|7.4|133|
|2.7|6.5|121|
|5.7|10.4|145|
|1.9|3|70|

<br/>

### What Do the Statistical Hypotheses Look Like For Correlation?

Correlations assume that the relationship between the X and Y variables fits a straight line. The null and alternate hypotheses are:

> H0: ΔX ∝̸ ΔY, where ΔX = change in X, ΔY = change in Y, and ∝ = "proportional to."
>
> HA: ΔX ∝ ΔY


### Calculating Correlations in Excel

To determine who is right in our apple example, you will need to calculate the __correlation coefficient__ (abbreviated __r__) between branch diameter (X) and apple wt. (Y), then the correlation between height above ground (X) and apple wt. (Y). 

The value of r will range from -1.0 to 1.0. The closer it is to -1.0 or +1.0, the stronger the relationship between the two variables. 


### How to Report and Interpret Correlation Statistics

When reporting correlation, include the r value, the number of pairs of data points, and the corresponding p-value. If you are reporting multiple correlations, it is helpful to include a short description of which comparison you are referencing. For our demo example, you might write:

> We found that apple weight was highly correlated with height above ground (r [apple wt. vs. growing ht.] = 0.922, n = 12, p<0.00002). Apple weight was weakly correlated with branch diameter (r [apple wt. vs. branch dia.] = 0.162, n = 12, p<0.001). This suggests that apple weight may be affected by the amount of sunlight reaching the leaves or fruit, or by other differences in growing environment related to a tree's height. More experiments are needed in the future to determine which specific factors correlated with height affect fruit size.

In this instance, you are right that apple weight is more strongly associated with the height above ground than with the branch size. Even though correlation does not tell us WHY the fruits are larger on the higher branches, it does give us ideas of what we should be looking at in future experiments (factors affected by height), and what we can ignore for now (factors that affect branch size).


## Linear Regression

Linear regression produces an equation that describes the relationship between values of a dependent variable Y and an independent variable X. It does this by finding the line that best fits the data points.

There are several different methods of linear regression that fit somewhat different lines. The most common method is “ordinary least-squares regression”; when someone says "linear regression" or even just "regression," they usually mean ordinary least-squares regression. 

A linear regression equation has a slope and y-intercept that can be used to predict new Y values for any chosen X value, or predict new X values for any given Y value.  

This video is a good introduction: [Video Intro to Regression](https://youtu.be/WWqE7YHR4Jc)


### An Example of Linear Regression

You think that apple trees produce larger fruits near their tops because that is where the leaves receive the most light. Your testable biological hypothesis is:

> If more sunlight at the top of an apple tree increases fruit size, then the weight of fruits should go up as its height in the tree goes up.

You will need a dataset containing paired measurements. You already have a good one: the weights of apples picked from different heights on the tree that you used earlier to calculate correlations. You want to know if the height on the tree where an apple is picked can predict how heavy it will be.

__Table 2.__ Weight of apples versus height above ground.

|Ht. above ground (m)|Apple wt. (g)|
|:-:|:-:|
|3|70|
|3.4|73|
|4.2|93|
|6.2|127|
|6.5|121|
|7.4|133|
|9.1|139|
|10.4|145|
|11.6|151|
|12.7|159|
|12.9|167|
|14.2|170|

<br/>


### What Do the Statistical Hypotheses Look Like For Linear Regression?

> H<sub>0</sub>: The slope of the best-fit line is equal to zero. (The strength of the association between the two variables is so small that we cannot predict values of X from Y, nor Y from X.)
>
> H<sub>A</sub>: The slope of the best-fit line is not equal to zero. (There is a non-zero association between the X and Y variables.)


### Calculating Regression Statistics in Excel

You can use MS Excel to calculate slope, y-intercept, and correlation coefficient. Unfortunately there is no formula for calculating the p-value for the slope in a regression equation. 

* Use the formula "=SLOPE(known-Ys, known-Xs)" to calculate the slope for the line that fits the data.
* Use the formula "=INTERCEPT(known-Ys, known-Xs)" to calculate the Y-intercept for the line that fits the data.
* Use the formula "=CORREL(known-Ys, known-Xs)" to calculate the correlation coefficient for the line that fits the data. If you need coefficient of determination, use the formula "=(CORREL(known-Ys, known-Xs))^2" to calculate it.
* Options for calculating the p-value (and the others too) are to:
    + Use the [premade Excel template by Dr. John McDonald](http://www.biostathandbook.com/regression.xls)
    + Use the online regression tool from [VassarStats](http://vassarstats.net/corr_stats.html)
    + Use the Regression function in Excel's Data Analysis Add-on Package


### How to Report Linear Regression Statistics

You should report the slope, y-intercept, p-value, correlation, and number of data pairs used. So you might report the analysis of data in Table 2 like this:

> We found that apple weight was highly correlated with height above ground (slope = 8.39, y-intercept = 57.94, p < 0.0001, r = 0.960, n = 12). 

An abbreviated way to write it is:

> (m = 8.39, b = 57.94, p < 0.0001, r = 0.960, n = 12)


### It is Very Easy to Misinterpret Linear Regressions

Linear regression is a powerful modeling tool, but you need to be careful not to over-interpret the equation. A mistake we see students make routinely is to try and extrapolate the linear relationship and make predictions that are not plausible biologically. 

For example, look at the y-intercept, where the line reaches zero on the x axis. According to this regression we can predict that an apple grown at ground level should be 58g. Yet we know from direct observation that there are no branches on the ground. So the theoretical prediction is not going to happen in reality.  

Suppose we extrapolate beyond the tree height and fruit sizes in Table 2. We would predict that if we let the tree grow to ~16m tall, we could pick apples weighing ~200g. That is well beyond the maximum size that apples will reach; apples that size simply break off the branches. 

Both of these errors come from trying to make predictions about what will happen outside of our observed range. The general rule of thumb is that you can use a linear regression to extrapolate unknown values BETWEEN the smallest and largest X or Y values, but you should not try to extrapolate values ABOVE the largest observed values, or BELOW the smallest observed values.

The most dangerous mistake you can make is to jump to the conclusion that your original biological hypothesis must be true because it fits your equation. ALL you did was show there is a linear relationship between weight of apples and their height on the tree. You did not actually measure anything DIRECTLY relating to sunlight, so you cannot say the amount of sunlight is different at different heights. All you have is indirect evidence at this point. 

Suppose you learned about a study by another group who found changes in plant hormones (not sunlight) make apples ripen from the top of the tree down. Then you find a second, separate study that says apples reach their maximum weight just as they finish ripening. Your results could be explained in a completely different way now.  

The point to take away here is that you need to be very careful not to make conclusions that your data cannot actually support.


## Advanced Topic: The Difference In r Versus r<sup>2</sup>

Correlation and linear regression can be confusing because scientists can report the important values in slightly different ways.

__r<sub>xy</sub>__, which is usually written as simply __r__ is the __Pearson correlation coefficient__ for two sets of numbers, x and y. It can range from -1.0 to +1.0. 

* A negative value for r means that as the value for x goes up, the value for y goes down (or vice versa.) 
* A value of r near zero means there is little or no correlation between the x values and y values.
* A positive value for r means that as the value for x goes up, the value for y goes up too.

__r<sup>2</sup>__, is the __coefficient of determination__ for two sets of numbers, x and y. It literally is the square of the Pearson correlation coefficient. Because it is the square of another value, r<sup>2</sup> can only be positive. It can range from 0.0 to +1.0. 

Pearson correlation (r) explains the strength of the relationship between an independent and dependent variable, while the coefficient of determination (r<sup>2</sup>) explains how much variation in one variable explains the variation in the second variable. Which one you should use (and report) depends on what you are trying to say about your data. 

* r describes how closely your data points fit to a line, and whether the slope of the line is positive or negative. You should report r when the direction of the relationship of your data is important. For example, we usually report r when we:
    + Report a Beer-Lambert linear regression. This is the type of plot we use as a standard curve for assays. 
    + Use the line to estimate an unknown X value from a measured Y value, or vice versa. 
    + Are not comparing the linear regression to another model.

* r<sup>2</sup> describes the percentage of variation in your dependent variable that can be explained by variation in the independent variable. For example, if the r<sup>2</sup> of a regression is 0.850, then approximately 85% of the observed variation in the Y data can be explained by variation in the X data. We usually report r<sup>2</sup> when we:
    + Want to emphasize how well our line models our data.
    + Want to compare two linear models.

Ultimately, if the strength and direction of a linear relationship is more important, then r is the correct statistic to report. If the proportion of variation explained is more important, then r² is the correct statistic. 

If you are unsure which to report, always report r. Readers can estimate r<sup>2</sup> for themselves.


