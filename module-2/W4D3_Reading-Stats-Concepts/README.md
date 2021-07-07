![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts

## Introduction

In the future, you will need to understand deep statistical concepts by reading technical articles. As a training for that, it is interesting to start from here. Also, as we have limited time, this is a way to have some self guided learning to understand everything better and have a wider knowledge.

This week you will find some questions here that you will need to answer by documentating yourself. So you will do a different PR for each question (you are meant to answer the questions in different days). Don't hesitate to write as many text as you need and push images if you need them.

Remember for this lab: there is a right answer. But there is no perfect way to explain it (except for in a mathematical way, but this is another story).

## Challenges

_**My answers will be in bold italic under the original part of each challenge.**_

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating.

As a good reference (once you have looked for some information) you have   [this](http://expected.news/value2) article.

_**Mean is used in descriptive statistics. Mean is the sum of all the events divided by the number of events.**_

_**The basic expected value formula is the probability of an event multiplied by the amount of times the event happens. Expected value can only be used when we are talking over a large number of experiments.**_

_**So the two concepts are no synonims of eachother.**_

### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

Don't hesitate to use more articles if you want to :)

_**A smaller p-value means that there is stronger evidence in favor of the alternative hypothesis. OR. The smaller the p-value, the more certainty there is that the null hypothesis can be rejected.
A p-value less than 0.05 (typically ≤ 0.05) is statistically significant. It indicates strong evidence against the null hypothesis, as there is less than a 5% probability the null is correct (and the results are random). Therefore, we reject the null hypothesis, and accept the alternative hypothesis.**_

_**Random variation alone can easily lead to large disparities in P values, far beyond falling just to either side of the 0.05 threshold. For example, even if researchers could conduct two perfect replication studies of some genuine effect, each with 80% power (chance) of achieving P < 0.05, it would not be very surprising for one to obtain P < 0.01 and the other P > 0.30. Whether a P value is small or large, caution is warranted.**_

_**The "problem" with p-values in science is that researchers are interpreting a non-significant test result as indication for 'no difference' or 'no effect'. While this is dependent on the sample. In another sample the p-value can be different and the result can be significant. Also not significant does not mean that there is no difference or no effect. It only means that the evidence is not given with this sample.**_

_**Better would be to say: "Our results are most compatible with no important effect."**_


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

_**If I look at the example of Basecamp. Set up the new startpage. Make sure people are randomly directed to the "old" or the new startpage. Make a daily report on the differences. After a week the first official results. Opening for small tweaks if really needed. Second week till fourth week, daily and weekly reports. After a month official report with statistics review if change is significant.**_

## Deliverables
You need to submit a markdown file with the answers to the questions above. You can create a new `.md` file or directly edit the `README.md`.

## Submission
Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.
