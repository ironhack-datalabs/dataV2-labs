### Challenge 1
One player rolls two dices. Describe the measurable (sample) space and the random variable for:

* A. The values that the player obtains.

sample space: all the combinations of 1, 2, 3, 4, 5, 6, i.e. 11, 12, 13, 14, 15, 16, 21, 22, 23, ..., 66 - in total 36 outcomes, let's assume that order matters in this case)

random variable: one of the available combinations from the sample space

* B. The sum of the values obtained.

sample space: {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}

random variable: one sum out of the possible sums described in sample space

* C. The maximum value obtained after rolling both dices.

sample space: {1, 2, 3, 4, 5, 6} (I compare the values on both dices and choose the higher one)

random variable: the higher value out of two rolled dice

Describe the following events:

* Case A: Both values are greater than 5.

Event: The player rolls 66

* Case B: The sum of values is even.

Event: 2, 4, 6, 8, 10, 12

* Case C: The maximum is the value of both rolls.

Event: 1, 2, 3, 4, 5, 6
(Not sure how to interpret the case. The value taken as event is the greater one from possible two?)

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:

* A. The number of figures he picks.

figures = faces

sample space: {KK, KQ, KJ, 
               QK, QQ, QJ, 
               JK, JQ, JJ, 
               K + any number 2-10 and vice versa, 
               K + Ace and vice versa, 
               Q + any number 2-10 and vice versa, 
               Q + Ace and vice versa, 
               J + any number 2-10 and vice versa, 
               J + Ace and vice versa, 
				any combination of numbers 2-10, 
				Ace + any number 2-10, 
				Ace + Ace}

random variable: any combination of 2 figures and/or numbers out of the poker deck

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.

sample space: {4, 5, 6, 7, 8, 9, 10, 11, ..., 23, 24, 30, 35}

random variable: any combination of 2 cards from poker deck, representing values as defined above

* C. The number of hearts or spades he picks.

H - heart, S - spade, D - diamond, C - club
sample space: {HH, HS, HD, HC, 
               CH, CS, CD, SC,
               SH, SS, SD, SC, 
               DH, DS, DD, DC}

random variable: the combination of the type of cards

Describe the following events:

* Case A: The number of figures in the cards the player picked is two.

Event: the player picks the combination of KK, KQ, QK, KJ, JK, QJ, JQ, JJ.

* Case B: The sum of card values is 17.

Event: { K, Q, J and card value 7, 
        cards value 10 and 7,
        cards value 9 and 8, 
        Ace and card value 2}

* Case C: The value of both cards is less than 8.

Event: The player picks cards with value of each being 7, 6, 5, 4, 3 or 2.

### Challenge 3

Two players roll a dice. Describe the measurable space and the random variable for:

* A. The score of player A.

I assume that the players roll one die. 

sample space: {1, 2, 3, 4, 5, 6}

random variable: the player may score from 1 to 6

* B. The greatest score.

sample space: {1, 2, 3, 4, 5, 6}

random variable: any combination (pair) selected from numbers from 1 to 6

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".

sample space: {-1 coin (player A loses), +1 coin (player A wins), 0 (tie)}

random variable: the earnings of Player A

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

sample space: {-5c, -4c, -3c, -2c, -1c, 0 (tie), 1c, 2c, 3c, 4c, 5c}

random variable: the earnings of player A

Describe the following events:

* Case A: The score of player A is 2.

Event: The player A rolled 2, the player B rolled 1-6

* Case B: The greatest score is lower or equal than 2.

Event: the players rolled (1,1), (1,2), (2,1)

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  
Event: (5,1), (6,2)
  
  * Player A loses more than 2 coins.
  
Event: (3,6), (2,6), (1,6), (2,5), (1,5), (1,4)

  * Player A neither wins nor loses coins.
  
Event: (1,1), (2,2), (3,3), (4,4), (5,5), (6,6)


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