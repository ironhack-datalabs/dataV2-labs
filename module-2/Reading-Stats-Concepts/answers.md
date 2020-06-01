Challenge 1: What is the difference between expected value and mean?

Expected value is the weighted average value of a random variable, i.e. its values weighted by their probabilities, before the experiment begins. 

Mean instead is calculated after the experiment is done, i.e. we have tried N times and
we calculate mean for the given sample.

As far as I understand, expected value and mean will converge over a large number of experiments.


Challenge 2: What is the "problem" in science with p-values?

Relying solely on thresholds of statistical significance can mislead the researchers and eventually distort the scientific literature. P-value  is quite often used as a tool to conclude that there is no difference or no association between two examined groups, or that two research studies produced conflicting results, when it actually means that the results were not statistically significant for that particular study design, dataset or assumptions.  

Moreover, when decision to interpret or publish results are based on thresholds, there is incentive to choose data and methods that demonstrate statistical significance for desired results, and insignificance for undesired ones.


Challenge 3: Applying testing to a specific case: A/B testing.

I will take Basecamp website as example. Before changing their marketing site they would have benefited greatly from A/B testing. Given my limited knowledge of statistical testing so far, the process could be as follows:

- randomly divide the visitors of the website into control and test group: A 70% land on the old style page, B 30% on the new one
- measure signup rate for group A and group B every day for a month (their daily signup graph shows monthly fluctuations, so it's a reasonable time period for testing to rule out the differences due to monthly seasonality)
- compare mean daily signup rate in group A and B, as well as standard deviations, medians, min, max, 25th and 75th percentiles
- plot and compare distributions in both groups
- test the hypothesis that conversion rate is the same for both groups. I will learn the exact implementation of this step in the following weeks of DA course.

