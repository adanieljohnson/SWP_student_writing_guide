# Biostatistics 4: Comparing Groups - Chi Square Tests {#compstatsthree475}

A Chi-squared test is like a t-test in that there are several versions and variations which are appropriate for different situations. Where t-tests are used to evaluate raw numbers, Chi-squared tests compare ratios and frequencies of categorical data. These can be compared to a predicted set of data or an independent set. The test itself calculates a statistic that measures how far the observed data are from the null expectation. We then use a mathematical relationship called the chi-squared distribution to estimate the probability of obtaining that value of the test statistic if there is no actual difference from the null.

Ratios and frequencies calculated from a small number of data point are very sensitive to outliers, and are more accurate when calculated using a large number of data points. So Chi-squared tests should only be used for datasets where the ratios or frequencies are based on a large number of data points.

This video is a good introduction to Chi-squared tests: [Video Intro to Chi-Squared](https://youtu.be/7_cs1YlZoug)


## Chi-Squared Goodness of Fit

This tests a null hypothesis that observed frequencies are not different from expected frequencies. You would use the chi-squared goodness-of-fit test when you have one categorical variable with two or more count groups that can be expressed as a ratio (1:2, 3:1, 10:3, etc.), and you want to compare a set of observed counts in each group with a set of predicted or expected counts.

### An Example of Chi-Squared Goodness of Fit in Action

In fruit flies, black markings are controlled by a single gene. A simple recessive mutation in a somatic gene causes the _ebony_ phenotype, where their entire body is dark brown to near black. If they are mated to wild type flies, all of the offspring in the F1 generation will have normal dull yellow to tan color with some black markings. Based on a Punnet square, if you cross the F1 flies to each other, the expected ratio of wild type to ebony flies in the F2 generation would be 3:1 or 3/4 normal to 1/4 ebony. 

You actually perform the cross, and collect 39 wild type and 5 ebony flies. The observed ratio is about 7:1 Is your __observed ratio__ significantly different from the __expected/predicted ratio__?

You perform the cross another 6 times, and collect a total of 337 wild type and 124 ebony flies. Is your observed ratio significantly different from the expected/predicted ratio?


### What Do the Statistical Hypotheses Look Like For Chi Square Goodness of Fit Test?

The null is that the number of observations in each category is equal to what is predicted by theory. The alternate is that the observed number of observations are different from those expected based on theory.

> H<sub>0</sub>: O = E, where O=observed values and E=expected values.

> H<sub>A</sub>: O ≠ E


## Running the Test

MS Excel can calculate a Chi-squared statistic using a formula, but does not provide the full dataset for reporting it correctly. We suggest using [Dr. McDonald's premade Excel template](http://www.biostathandbook.com/chigof.xls). 

Online calculators are available too.

* [VassarStats Chi-Squared](http://vassarstats.net/csfit.html)
* [GoodCalculators for Chi-Squared](https://goodcalculators.com/chi-square-calculator/)


### How to Report and Interpret Chi Square Goodness of Fit Test Statistics

When reporting the results of a Chi-squared test, include the number of data points, the calculated Chi-squared value, the degrees of freedom, and the corresponding p-value. 

For the first example above you might write:

> We found 39 wild type flies and 5 ebony flies. The results did not fit the expected ratio of 3:1. The observed frequency of phenotypes was significantly different from the expected frequency (χ2 = 4.364, d.f. = 1, P = 0.037).

For the second example you might write:

> We found 337 wild type flies and 124 ebony flies. The results did fit the expected ratio of 3:1. The observed frequency of phenotypes did not differ significantly from the expected frequency (χ2 = 0.886, d.f. = 1, P = 0.347).

You are not reading that wrong; the two analyses came up with different results. Take a closer look at the raw data. The first example is based on a much smaller dataset (44 flies) than the second example (461 flies). We said at the top of this page that ratios made with small numbers are sensitive to outliers. The first sample collected was not a good representation of the entire population of flies. We had to take multiple samples to get enough flies for the observed ratio to fit the expected ratio.

This is another example of why you cannot just accept what any statistical tests say blindly. You have to think about what they are telling you, and the limitations of the tests you are using. Remember you don't want to be a p-value zombie! 


## Chi-Squared Test of Independence

This tests a null hypothesis that proportions are the same in different groups. You can use the Chi-squared test of independence when you have two categories to compare, and the measurements can be expressed as ratios. Think of it as an alternative version of the goodness of fit test, but instead of comparing your observed ratios to expected/predicted ratios, you are comparing two sets of observed ratios.

Data for this test usually are organized into a contingency table or an “R×C table,” where R is the number of rows and C is the number of columns. The number or row and columns depend on how many categories each variable has. The placement of the variables in rows or columns is arbitrary; it doesn’t matter which variable is in columns and which is in rows.


### An Example of a Chi-Squared Test of Independence

A physician in Student Health on campus wats to know whether it is better to give the diphtheria, tetanus and pertussis (DTaP) vaccine to college students in either the thigh or the arm. The physician randomly selects students to get their vaccination in their thigh or their arm, and records how many have a severe reaction (a red spot bigger than 3 cm, pain or itching, swelling, or a fever within 3 days.) One categorical variable is severe reaction vs. no severe reaction; the other categorical variable is thigh vs. arm. Each vaccinated student is scored and placed in one of the 4 categories.

__Table 1__. Data table for vaccination reaction experiment.

|Site of Vaccination|No severe reaction|Severe reaction|
|:-:|:-:|:-:|
|Thigh|4758|30|
|Arm|8840|76|

More students had a severe reaction when vaccinated in their arm, but more students got vaccinated there overall. Still, it looks like students are more likely to have a severe reaction if vaccinated in the arm. The Chi-squared test of independence will tell us whether the observed difference in the ratio of severe vs. non-severe reactions could have occurred by chance.


### What Do the Statistical Hypotheses Look Like For Chi Square Test of Independence?

The null hypothesis is that the relative proportions of one variable are independent of the other variable. In other words, the proportions at one variable are the same for different values of the second variable.

> H<sub>0</sub>: p1 = p2, where p1 = proportion of the first variable & p2 = proportion of the second.

The alternate hypothesis is that the observed proportions of each variable are different each other. 

> H<sub>A</sub>: p1 ≠ p2, where p1 = proportion of the first variable & p2 = proportion of the second.


## Calculating Chi-Squared Test of Independence in Excel

Once again, MS Excel does not provide the full dataset for reporting this statistic correctly. We suggest using [Dr. McDonald's premade Excel template](http://www.biostathandbook.com/chiind.xls). 

Online calculators are available too. If you have a contingency table made up of small numbers, look into using the Kolmogorov-Smirnov One-Sample Test.

* [Quantitative Psychology 10x10 Table](http://www.quantpsy.org/chisq/chisq.htm)
* [Kolmogorov-Smirnov One-Sample Test](http://vassarstats.net/ksm.html)


### How to Report and Interpret Chi Squared Test of Independence

As before, include the number of data points, the calculated Chi-squared value, the degrees of freedom, and the corresponding p-value. 

If you are helping to write up the vaccination example above, you might report the results like this:

> In our test groups, 30 of 4788 students injected with the vaccine in the thigh had a severe reaction, versus 76 of 8916 students vaccinated in the arm (χ2 = 2.07, 1 d.f., p = 0.15). Our results showed no significant difference in the fraction of students having a severe reaction after vaccination in either site.

