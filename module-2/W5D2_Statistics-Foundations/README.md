![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*.

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.

_**My answers will be underneath each part of the challenges in bold italic.**_

## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.

_**The sample space of the dice are 1 to 6 for each dice. The total sample space is 36 options long. Everything from (1,1) till (6,6).**_
_**The random variable is 1, 2, 3, 4, 5 or 6 for each dice.**_

* B. The sum of the values obtained.

_**The sample space of the sum of the values obtained is all numbers 2 and 12 (including the 2 and 12) so 11 options long.**_
_**The random variable here is the sum of both dices, so one of the numbers between 2 and 12 (including the 2 and 12).**_

* C. The maximum value obtained after rolling both dices.

_**The sample space of the maximum value after rolling both dices is also all numbers between 2 and 12 (including the 2 and 12) so 11 options long.**_
_**The random variable is 1 to 6 for both dices.**_

Describe the following events:
* Case A: Both values are greater than 5.

_**There is only one event possible where both values are greater than 5. This is the event of both dice roll a 6. There is a 1 in 36 chance this is happening.**_

* Case B: The sum of values is even.

_**The sum of both dices is even. In half the possible outcomes this is the case. So the possibility is 0.5.**_

* Case C: The maximum is the value of both rolls.

_**The maximum value after both rolls are all values between 2 and 12. Not possible to say something specific about the possibility in this case as this is always true.**_


### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.

_**The sample space in this case is 0, 1 and 2. Or no figures are drawn, or 1 figure is drawn or 2 figures are drawn.**_
_**The random variable is the specific card the player draws, with or without a figure.**_

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.

_**The sample space are all numbers between 4 and 30 (including the 4 and 30). As The lowest possible combination is two twos. The highest possible combination is two aces.**_
_**The random variable here is the specific card drawn, without looking at suits.**_

* C. The number of hearts or spades he picks.

_**The sample space here is again 0, 1 or 2. As it is about the number of hearts or spades.**_
_**The random variable is again about the specific card drawn, with looking at suits.**_

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.

_**The number of figures in the total deck is 16 out of 52. After the player picked the first figure the number of figures is 15 out of 51.**_

* Case B: The sum of card values is 17.

_**The options here are 7 combined with 10, jack, queen or king OR the 8 combined with the 9 OR the two combined with the ace. The total number of combinations are 52 * 51 is 2652 combinations.**_

* Case C: The value of both cards is less than 8.

_**The possibility of the first card being less than 8 is 24 out of 52. The possiblity of the second card also being less than 8 is 23 out of 51.**_

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.

_**The sample space is 1, 2, 3, 4, 5 and 6 for player A.**_
_**The random variable for player A is the number thrown between 1 and 6.**_

* B. The greatest score.

_**The sample space of the greatest score for the two players is 2 to 6, as only one player can throw the greatest score.**_
_**The random variable for the players is the number of dots thrown by each player.**_

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".

_**The sample space is winning or losing.**_
_**The random variable is the number of dots thrown by the player.**_

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.".

_**The sample space is still winning or losing.**_
_**The random variable is still the number of dots thrown by the player.**_

Describe the following events:
* Case A: The score of player A is 2.

_**The possibility of the score being 2 of player A is 1 over 6 as it is one of the possible six outcomes.**_

* Case B: The greatest score is lower or equal than 2.

_**A greatest score lower than 2 is not possible as the only option than is that both players throw a 1 and in that case there is no greatest score. A greatest score equal to two is possible only if the other player throws a 1.**_

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe:
  * Player A wins at least 4 coins.

  _**This can only happen when player A throws a 5 or a 6 AND the other player throws a 1 or a 2.**_

  * Player A loses more than 2 coins.

  _**In this case player B must throw at least 4 and player A throws maximum 3.**_

  * Player A neither wins nor loses coins.

  _**This event only happens when both players throw the same amount of dots.**_


## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white.

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.
