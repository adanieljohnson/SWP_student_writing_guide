# Variables {#variables215}

The words defined here come up regularly when talking about scientific writing, and we often see students use them incorrectly. Your instructor may warn you about other "watch-out" terms that they see misused. You definitely should use these terms, just take extra care to use them __correctly__ when you do. 

To make it easier to compare these terms, we have defined all of them together here, then provided shorter definitions as each term comes up elsewhere.


## Types of Variables

Knowing what kinds of variables you have in your experiment helps you decide what kinds of statistical tests are appropriate for analyzing your data. The types of variables also can help you pick the most effective ways of summarizing and presenting your data.


### Independent Versus Dependent Variables

An __independent variable__ (also known as a predictor, explanatory, or exposure variable) is a variable that you think you can change, and cause a change in a __dependent variable__ (also known as an outcome or response variable). 

For example, if you grow mung beans with 5 different light conditions and measure their transpiration rate, the amount of light is an independent variable (it is what you are controlling in your experiment.) The transpiration rate is a dependent variable, because you are predicting that it changes in response to different light conditions. 

[This YouTube video](https://youtu.be/s-fVRJyEvS0) explains independent and dependent variables further.


### Measurement, Categorical, and Ranked Variables

__Measurement variables__, also known as __quantitative variables__ are variables where the observation can be expressed as a number. Examples include length, weight, pH, and bone density. There are two types of measurement variables. __Continuous variables__ have an infinite number of possible values. __Discrete variables__ only have whole number values; these are things you count. For example, the length of an isopod’s antennae in millimeters would be a continuous variable, while the number of segments in its antennae would be a discrete variable.

__Categorical variables__ can be expressed as a group name. For example, the color of pea flowers could be white, light pink, dark pink, or red. There are four possible colors/categories in which flowers could be placed, but the categories do not have a meaningful order. __Ranked variables__ are similar, but the names of the categories can be put in a meaningful rank order. Examples of ranked variables are hot/warm/cold; low/medium/high; first year/second year/third year/fourth year. 

These three variable types (measurement, categorical, or ranked) can be either independent or dependent. For example, if you want to know whether sex affects body temperature in mice, sex (a categorical variable) would be an independent variable and temperature would be the dependent variable. If you wanted to know whether the incubation temperature of eggs affects sex in turtles, temperature would be the independent variable and sex would be the dependent variable.


### Transformation and Normalization

__Transformation__ is the general term we use for taking a numeric measurement and modifying it using a formula.

Transformations usually are done on the raw data, before calculating descriptive statistics or performing other analyses. 

A good example of transformation is when you express your data as a ratio. Say you want to know whether male isopods have bigger heads, relative to body size, than female isopods. You could answer this question by measuring the head width and body length for 25 male and 25 female isopods. To control for different body sizes, you divide the head width of each isopod by its body length. Then you take the ratio of head width to body length for each isopod, and average them for males versus females. Finally you compare the mean ratios for males and females using a two-sample t–test. 

This is a reasonable situation in which to use data transformation, but you cannot use ratios (or any other transformation) blindly. You need to be sure you are not biasing your data. 

In this particular experiment we are assuming that there is a linear relationship between head width and body length in isopods: as body length doubles, head width also doubles. We can check this assumption by graphing the original measurements, with body length on the X axis and head width on the Y axis. 

If the plotted points form a (more or less) straight line, then there is a linear relationship between body length and head width. We can safely use the width/length ratio to transform the data. Suppose instead that the plot of the width of isopod heads vs. body length was NOT a straight line, but formed a curve. This would suggest that the relationship is NOT linear and that we cannot use a simple ratio. 

 __Normalization__ is a specific type of transformation, where we correct values for pre-existing differences between the samples.  

<br/>
<hr/>

## Instructors' Supplement
### Adapting Your Guide

These are the terms that our students misuse most often when writing. Revise this page to emphasize terms that your local audience uses incorrectly most often.
