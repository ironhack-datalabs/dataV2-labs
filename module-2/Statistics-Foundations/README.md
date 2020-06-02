![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. 

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.

## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
Measurable Space
(1,1)(1,2)(1,3)(1,4)(1,5)(1,6)
(2,1)(2,2)(2,3)(2,4)(2,5)(2,6)
(3,1)(3,2)(3,3)(3,4)(3,5)(3,6)
(4,1)(4,2)(4,3)(4,4)(4,5)(4,6)
(5,1)(5,2)(5,3)(5,4)(5,5)(5,6)
(6,1)(6,2)(6,3)(6,4)(6,5)(6,6)
Random Variable
The rolls of each die

* B. The sum of the values obtained.
Measurable Space
(2,3,4,5,6,7,8,9,101,11,12)
Random Varaible
The sum of the combined roll

* C. The maximum value obtained after rolling both dices.
Measurable Space
(12)
Random Variable
The sum of the maximum numbers rolled


Describe the following events:
* Case A: Both values are greater than 5.
(4/36)
* Case B: The sum of values is even.
(18/36)
* Case C: The maximum is the value of both rolls.
(1/36)

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.
Measurable Space
(K,K)(K,Q)(K,J)
(Q,K)(Q,Q)(Q,J)
(J,K)(J,Q)(J,J)
Random Variable
Any combination of the 2 figures

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
Measurable Space
(4 --> 30)
Random Variable 
Any combination of the 52 cards will be between the numbers above

* C. The number of hearts or spades he picks.
Measurable Space
(Heart/Spade Cards) = 26
Random Variable
Any combination of Heart and Spade cards


Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
KK, KQ, QK, KJ, JK, QJ, JQ, JJ
* Case B: The sum of card values is 17.
(Ace and 2)(10 and 7)(Figures and 7)(9 and 8)
* Case C: The value of both cards is less than 8.
(2 and 2)(2 and 3)(2 and 4)(2 and 5)(3 and 4)

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
Measurable Space
(1,2,3,4,5,6)
Random Variable
Any number between 1 to 6

* B. The greatest score.
Measurable Space
(6)
Random Variable
6 snake eyed side of the die

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
Measurable Space
(+1 coin Player A wins)(-1 coin Player A loses)(0 Player A Ties)
Random Variable
The score Player A gets

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 
Measurable Space

Random Variable

Describe the following events:
* Case A: The score of player A is 2.
Player B could have rolled anywhere between 1 and 6
* Case B: The greatest score is lower or equal than 2.
Players Rolled(1,1)(2,1)(1,2)
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  * Player A loses more than 2 coins.
  * Player A neither wins nor loses coins.

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