![Ironhack logo](https://i.imgur.com/1QgrNNw.png)


## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 
As a good reference (once you have looked for some information) you have   [this](http://expected.news/value2) article.

Mean is the average of the values, essencially SUM/LEN of a set. Even two numbers can have a mean.

Expected value is the average value of a random variable over a large number of experiments.
This can be calculated by sum of all possible values multiplied by the outcome of the value.


### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

Don't hesitate to use more articles if you want to :)

P values can be interpreted multiple ways. Therefore it isn't always valid for comparing 2 sets of data.


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

## 


## Deliverables
You need to submit a markdown file with the answers to the questions above. You can create a new `.md` file or directly edit the `README.md`.

## Submission
Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.


# I hope i understood the task properly...:
This is similar to train_test_split from scikit learn or to random blind doubletests in medical studies.

The steps are:
We can check the baseline expected rate of change for pieces of the full set, randomly selected, and count a mean of the change rates.
Then we can split the data into two pieces, one with the function applied and one without.

Then we can compare the rate of change to the baseline for both groups and see the 'improvement'.
This always needs to be checked against the unchanged test sample too to see if the baseline change was as expected or not.

