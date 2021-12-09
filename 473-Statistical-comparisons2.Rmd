# Biostatistics 3: Comparing Three or More Groups - ANOVA

Analysis of variance (ANOVA) is an extension of t-tests. It tests whether the means of measurements from three or more treatment groups are equal. It works by comparing whether individuals chosen from different groups are, on average, more different than individuals chosen from the same group. 

If your ANOVA test reports a significant p-value, that tells you that __at least one of the means is different from the other__, but it does not say which treatment groups are different. To compare each pair of groups, we use a __post-hoc test__ like the Tukey-Kramer test. Most post-hoc tests are a modified version of a t-test.

The most common version of ANOVA is the __one-way ANOVA.__ Like a two-sample t-test, it tests a null hypothesis that the means of a measurement variable are the same in three or more independently sampled groups. __Repeated measures ANOVA__ is like the paired t-test, in it tests a null hypothesis that the mean difference in a measured variable between 3+ categorical or treatment groups is zero.

Like t-tests, there are two different versions of ANOVA. Fisher’s ANOVA is used when the variance is about the same in all of the groups. Welch’s ANOVA is the better choice if there is unequal variance in the groups.

This video is a good introduction to ANOVA: [Video Intro to ANOVA](https://youtu.be/oOuu8IBd-yo)


## An Example of One-Way ANOVA

There is a disagreement among your friends about the benefits of being a vegetarian. Some say it lowers blood cholesterol (a benefit), while others argue it lowers blood iron levels (which is not good.) You and your friends decide to find out which claim (if either) is true by comparing blood cholesterol and iron levels of male vegetarian (MV), female vegetarian (FV), male omnivorous (MO), and female omnivorous (FO) students.

You have four categories (FO, MO, FV, and MV) that you are comparing for two measurement variables (cholesterol, iron). How do you put the data in a form you can evaluate using ANOVA?


## What Do the Statistical Hypotheses Look Like For One-Way ANOVA?

The null hypothesis is that the population means are the same for all groups. We can state it mathematically as: 

> H<sub>0</sub>:  x̅<sub>MV</sub> = x̅<sub>FV</sub> = x̅<sub>MO</sub> = x̅<sub>FO</sub>

The alternative hypothesis is that least one mean is different from the others.

> H<sub>A</sub>:  x̅<sub>MV</sub> ≠ x̅<sub>FV</sub> 
or  
> x̅<sub>MV</sub> ≠ x̅M<sub>O</sub>  
or 
> x̅M<sub>V<sub> ≠ x̅<sub>FO</sub>
or 
> x̅F<sub>V</sub> ≠ x̅M<sub>O</sub>
or 
> x̅F<sub>V</sub> ≠ x̅F<sub>O</sub>
or 
> x̅M<sub>O</sub> ≠ x̅F<sub>O</sub>


## Running the Experiment

You recruit 40 volunteers to help you with your study. Here are the raw data you collect.

__Table 1.__ data

|Group|Blood cholesterol (mg/dl)|Blood iron (mg/dl)
|:-:|:-:|:-:|
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Male vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Female vegetarian|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Male omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||
|Female omnivore|||

Table 1 has all of the data we need, but which measurements should we be averaging? Should we include all of the measurements in the ANOVA? 

A common mistake we see students make when they first start using one-way ANOVA is arranging their data incorrectly for analysis. We actually made the experiment a little confusing intentionally so we can show you the problem, and help you learn to do it an more intuitive way.

If we rearrange the data, it is easier to see what to compare in the ANOVA.

__Table 2.__ Blood cholesterol data

|Group|Blood cholesterol (mg/dl)|Group|Blood cholesterol (mg/dl)|Group|Blood cholesterol (mg/dl)|Group|Blood cholesterol (mg/dl)|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Column 1|Column 2|Column 3|Column 4|Column 5|Column 6|Column 7|Column 8|
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||

__Table 3.__ Blood iron data

|Group|Blood iron (mg/dl)|Group|Blood iron (mg/dl)|Group|Blood iron (mg/dl)|Group|Blood iron (mg/dl)|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Column 1|Column 2|Column 3|Column 4|Column 5|Column 6|Column 7|Column 8|
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||
|Male veget.||Female veget.||Male omni.||Female omni.||

The four groups (categories) are now in separate columns (1,3,5, & 7) and the numbers we need for the ANOVA (in columns 2, 4, 6, & 8) are separated and grouped by category. 

Why did we separate the data for blood cholesterol from blood iron? A one-way ANOVA only works with one measurement variable at a time. Blood cholesterol and blood iron levels are different measurements, so we cannot compare them directly. We have to separate the two types of measurements for analysis. 


## Calculating ANOVA

Technically you can run ANOVA in Excel, but we do not recommend setting it up yourself. It is very easy to set up incorrectly. Instead we recommend using [this pre-formatted ANOVA Excel spreadsheet](http://www.biostathandbook.com/anova.xls). It was created by Dr. John H. McDonald at the University of Delaware as part of his [excellent online book of basic statistics](http://www.biostathandbook.com), which has Excel spreadsheets for many tests. 

Another option is to use one of these online calculators.

* [Vassar Stats](http://vassarstats.net/anova1u.html)
* [StatPages](https://statpages.info/anova1sm.html)
* [One-Way ANOVA](https://goodcalculators.com/one-way-anova-calculator/)

If your initial ANOVA tells you that at least one of the means is different from the others (p<0.05), you will need to perform a post hoc test to determine which groups are significantly different. Don't just compare the groups using a two-sample t-test over and over; you risk saying two groups are different when they are not. Instead use a Tukey-Kramer test (or some other post-hoc test) to determine which groups are different from each other.


## How to Report and Interpret ANOVA Statistics

The usual way to graph the results of a one-way ANOVA is with a bar graph. The heights of the bars indicate the means for each group. The error bar over each bar should be the standard deviation of the values from that group only.

When reporting the results of a one-way ANOVA in text, you need to include the p-value. Your statement summarizing our thought experiment might look like this:

> There was significant difference (p<0.00001) in blood cholesterol overall, and also in blood iron (p<0.005) overall between the four groups (see Figure 1). However there was no significant difference between vegetarians and omnivores in either blood cholesterol or blood iron (p=NS, Tukey-Kramer post-hoc test.) We found blood cholesterol was significantly higher in males than females, regardless of diet (p<0001 for vegetarians, p<0.05 for omnivores). Similarly blood iron was significantly higher in males than females, regardless of diet (p<00001 for vegetarians, p<0.005 for omnivores). 

The findings of this study highlight another important thing to remember when writing the discussion of your report: statistical significance is not the end of the story. Statistical results need to be __interpreted__. If we had stopped with the ANOVA and not looked at the post-hoc tests, we might have assumed (incorrectly) that the difference between the groups was due to diet, and come to the wrong conclusion. 


## There Are Other Kinds of ANOVA

You are unlikely to need other types of ANOVA in a basic biology course, but it helps to know they exist. Two-way ANOVA is used if you have one measurement variable and two categorical variables. There is a special type of two-way ANOVA called __repeated measures ANOVA (rmANOVA)__, which works essentially the same way as a paired t-test. In rmANOVA, observations or measurements are made on the same individual more than once, usually at different time points. The first measurement on each individual is the control value for that individual. Subsequent measurements are compared back to that value.

If you must run an rmANOVA, we recommend using dedicated statistical software. Outcomes are reported the same as with one-way ANOVAs.


