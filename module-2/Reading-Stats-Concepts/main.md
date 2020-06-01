![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts

## Introduction

In the future, you will need to understand deep statistical concepts by reading technical articles. As a training for that, it is interesting to start from here. Also, as we have limited time, this is a way to have some self guided learning to understand everything better and have a wider knowledge.

This week you will find some questions here that you will need to answer by documentating yourself. So you will do a different PR for each question (you are meant to answer the questions in different days). Don't hesitate to write as many text as you need and push images if you need them.

Remember for this lab: there is a right answer. But there is no perfect way to explain it (except for in a mathematical way, but this is another story).

## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating.

According to the article the definition of expected value is the following - 'expected value is the average value of a random variable over a large number of experiments', however I find the following personal definition derived after understanding what expected value is to be more helpful. 

'Expected value is the probability of an outcome multiplied by a value (payoff) and sum all outcomes.'

Mean is the average of the numbers vs expected value is probability of an outcome multiplied by a value. There is a difference between those two definitions. With that said according to wikipedia's definition, the expected value of a random variable is closely related to the weighted average and intuitively is the arithmetic mean of a large number of independent realizations of that variable.

### Challenge 2: What is the "problem" in science with p-values?
Wikipedia definition
In statistical hypothesis testing, the p-value or probability value is the probability of obtaining test results at least as extreme as the results actually observed during the test, assuming that the null hypothesis is correct

Other definitions
P-value is the probability of getting your sample statistics given that the null hypothesis is true. 
P-value tells us how us how likely it is to get a result like so if the null hypothesis is true.
P-value is the probability that you would get the result if chance is the only factor.

P-value is one of the most misused and misunderstood parts of scientific research. P-value is the probability that you would get the result if chance is the only factor. There is no relationship between the two things you are testing, but you could still wind up with data that suggest there is a relationship. The definition of chance varies depending on the experiment which is why p-values depend a lot on experimental design. Basically, researchers calculate how likely it is that they've gotten the data that they did, even if the effect they're testing for doesn't exist. Then, if the results are extremely unlikely to occur if the NULL HYPOTHESIS is TRUE, they can infer that it isn't. So with a low enough p-value, they can reject the null hypothesis, leaving them with whatever alternative hypothesis they had as the explanation for the results. The standard scientific p-value used for rejecting null hypothesis is 0.05 (less than 1 in 20 odds) -- that is an orbitrary choice. The p-value of 0.05 traces back to R.A. Fishers 1925 book where he said 1 in 20 was convenient which he later admitted that this cut-off was somewhat subjective and 0.05 was his personal preference. Since that time the 0.05 threshold has become the gold standard in scientific research. A result with a p-value of 0.049 isn't more true than one with a p-value of 0.051 - it's just ever so slightly less likely to be explained by chance or sampling error. You are not more right if you get a lower p-value because p-value says nothing about how correct your alternate hypothesis is. One might argue that 1 in 20 is not good enough threshold to really rule out that a result is achieved by luck. 

The p-value problem arrizes in studies with big data such as  nutritional studies or behavioral studies. Even though each individual comparison is unlikely, with enough comparisons you're bound to find some false positives. There are statistical solutions for this problem which is known as multiple comparison corrections. Though individual studies might give various reasons for skipping multiple comparison corrections, it is important to note that researchers are under a lot of pressure to publish their work thus 'significant results' are more likely to get published. This could lead to p-hacking: the practice of analyzing or collecting data, until you get significant p-values. 

Many who no longer use p-value are pushing for Bayesian statistics. P-value, by definition, only examine null hypothesis - the result is then used to infer if the alternative is likely. Bayesian statistics actually look at the probability of both the null AND alternative hypothesis. What you wind up with is an exact ratio of how likely one explanation is compared to another. This is called a Bayes factor. Still replacing p-values with bayes factor won't fix everything. A loftier solution is to completely separate a study's publishability from it's results. This idea is not widely used yet, but it may become more popular as statistical significance meets more sharp criticism. 


### Challenge 3: Applying testing to a specific case: A/B testing.
A/B testing is a widely used tool to understand differences between two samples. It is a way to measure the impact of something we did: 
* A marketing campaign.
* A new feature in our application. 
* A new design in our application.
* A different flow in the User Experience flow.

To do this, is very important first to design our experiment. 
* We need to know how we are measuring the impact. If people have the behaviour we want with this new implementation.
* We choose a control group (people who doesn't have/see the new change) and the group which will see the new change. 
* We think about how much data do we need.
* We measure the difference between them.

One example:
Our application has a lot of mini-games. We want people to reach the games that we think are the best but their behaviour is not what we expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for those kind of games inviting the users to click on it:

*Click here to discover cool games!*

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

My answer: 10% is not a significant population number to do an A/B testing on. I would recommend a higher percentage for the population. 

----------------------------------------------------------------------------------------------------------------------------

Which specific test would I apply? 
In Netflix example I would apply Experiment 3 (single cell title level explore test). In this experiment all members of the explore population are in a single cell. The experiment assigns an artwork variant for every (member, title) pair just before the title is shown to the member. The A/B test is done for every title with a cell for each artwork. Since the allocation happens at the title level, the experiment is able to accommodate different number of artwork variants per title.

[Another example about Netflix here](http://select.video/artwork4)
