![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. 

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.

## Challenges
### Challenge 1
One player rolls two dices. Describe the sample space and the random variable for:
* A. The values that the player obtains
Answer: Sample space: Ω={a list of all possible outcomes (36 in total)} and random variable: the roll of each independently
* B. The sum of the values obtained: 
Answer: Sample space: Ω={2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} and random variable: combined roll of the two dice
* C. The maximum value obtained after rolling both dices.
Answer: Sample space: Ω={12} and random variable: when 2 dice are rolled for example 4 & 6, we choose the maximum one 6

Describe the following events:
* Case A: Both values are greater than 5.
Answer: {6&6} - 1 possibility in a subset
* Case B: The sum of values is even.
Answer: {1&1, 1&3, 1&5, 2&2, 2&4, 2&6, 3&3, 3&5, 4&4, 4&6, 5&5) - 11 possibilities in a subset
* Case C: The maximum is the value of both rolls.
Answer: {6&6} - 1 possibility in a subset

### Challenge 2
One player picks two cards from a poker deck. Describe the sample space and the random variable for:
* A. The number of figures he picks.
Answer: Sample space: Ω={Jack, Queen and King cards with a total of 10 pair possibilities} and random variable: each card that is drawn from a deck
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
Answer: Sample space: Ω={4 to 25 which is 22 possibilites + Ace&Ace=30: 23 possibilities) and random variable: combined two cards drawn form a deck
* C. The number of hearts or spades he picks.
Answer: Sample space: Ω={0, 1 or 2 cards that either hearts or spades) random variable: 

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
Answer: {J&J, J&Q, J&K, Q&Q, Q&K, K&K) - 6 possibilities in a subset
* Case B: The sum of card values is 17.
Answer: {7&10, 8&9, 2&15(A1), 2&15(A2), 2&15(A3), 2&15(A4), 7&10(J1), 7&10(J2), 7&10(J3), 7&10(J4), 7&10(Q1), 7&10(Q2), 7&10(Q3),
7&10(Q4), 7&10(K1), 7&10(K2), 7&10(K3), 7&10(K4)} - 18 possibilities in a subset
* Case C: The value of both cards is less than 8.
Answer: {2&6, 3&5, 4&4} - 3 possibilities in a subset

### Challenge 3
Two players roll a dice. Describe the sample space and the random variable for:
* A. The score of player A.
Answer: Sample space: Ω={36 possible outcomes} and random variable: the roll of each independently
* B. The greatest score.
Answer: Sample space: Ω={15 possible outcomes) and random variable: when dice is rolled the one with the larger number is selected
* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
Answer: Sample space: Ω={15 coins} and random variable: when dice is rolled the one with the larger number is selected and receives a coin
* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 
Answer: Sample space: Ω={} and random variable: 

Describe the following events:
* Case A: The score of player A is 2.
Answer: {1&1} - 1 possibility in a subset
* Case B: The greatest score is lower or equal than 2.
Answer: {1&1} - 1 possibility in a subset
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins. Answer: {}
  * Player A loses more than 2 coins. Answer: {}
  * Player A neither wins nor loses coins. Answer: {}

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