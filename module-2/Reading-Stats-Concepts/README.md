![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts

## Introduction

In the future, you will need to understand deep statistical concepts by reading technical articles. As a training for that, it is interesting to start from here. Also, as we have limited time, this is a way to have some self guided learning to understand everything better and have a wider knowledge.

This week you will find some questions here that you will need to answer by documentating yourself. So you will do a different PR for each question (you are meant to answer the questions in different days). Don't hesitate to write as many text as you need and push images if you need them.

Remember for this lab: there is a right answer. But there is no perfect way to explain it (except for in a mathematical way, but this is another story).

## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 

As a good reference (once you have looked for some information) you have   [this](http://expected.news/value2) article.

Answer: They are numerically the same. The difference is that the mean is related to the sample average, as the expected value relates to the mean from the whole distribution of the random variable.

### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

Don't hesitate to use more articles if you want to :)

Answer: The problem is the use of the phrases ' statistically non-significant' for higher p-values and 'statistically significant' for lower p-values, since it's misinterpreted and biased as the probability of something happening or not. The fact that a certain interval relates better with the data, doesn't mean that the values outside that interval are incompatible.

### Challenge 3: Applying testing to a specific case: A/B testing.
A/B testing is a widely used tool to understand differences between two samples. It is a way to measure the impact of something we did: 
* A marketing campaign.
* A new feature in our application. 
* A new design in our application.
* A different flow in the User Experience flow.

To do this, is very important first to design our experiment. 
* We need to know how we are measuring the impact. If people has the behaviour we want with this new implementation.
* We choose a control group (people who doesn't have/see the new change) and the group which will see the new change. 
* We think about how much data do we need.
* We measure the difference between them.

One example:
Our application has a lot of mini-games. We want people to reach the games that we think are the best but the behaviour is not the expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for that kinf of games inviting the users to click on it:

*Click here to discover cool games!*

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

Read more about A/B testing with a couple of examples:

[Another example about Netflix here](http://select.video/artwork4)

[What happened to Basecamp](http://millions.social/tested7)

[An example with Python](http://math.social/tested3)

[A cool general explanation](http://arts.show/tested7)

So, take one single example in the articles you just read, which specific test/s would you apply? (We want you just to do a draft and think a little bit how to apply the tests you already know in this case)

Netflix: the objective was to increase titles access by changing the artwork to those more clicked by users.

Experiment 1: chose two different artworks for the same title + the original artwork, and tested them within these three sample.
Sample 1 - original artwork

Sample 2 - different artwork
Sample 3 - another different artwork.
They found out that one of the samples had a 6% increase take rate and the other had a 14% increase take rate, over the original artwork.
First step would be to define the null hypothesis if the artwork affects title take, and check if that increase was relevant comparing to the whole population of netflix users, where I would apply the ANOVA test and check the f-statistic for the p-value, to find out statistic 'relevance' and if the values from each group change significantly.

Experiment 2: the hypothesis was that it's possible to improve aggregate streaming hours for a large member allocation by selecting the best artwork across each of these titles.
Fase 1: measured best artwork for each title over 35 days.
Fase 2: compare with total streaming hours / hour share of the titles.
After measuring the best artwork and build the dataset for the hour comparison, we could build a prediction model and later apply the KS test (due to large number of data) to check how good the model fits the data.

Experiment 3: a more efficient and fair approach take from experiment 2, that could be fitted and tested as answered above.


## Deliverables
You need to submit a markdown file with the answers to the questions above. You can create a new `.md` file or directly edit the `README.md`.

## Submission
Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.
