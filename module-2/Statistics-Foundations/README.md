![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

## Challenges
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
* B. The sum of the values obtained.
* C. The maximum value obtained after rolling both dices.

#### Measurable space:
* A. { 1,2,3,4,5,6 + 1,2,3,4,5,6 }
* B. { 2..12 }
* C. { 6+6 }

#### Random Variable 
* A. { 1+1/12 }
* B. {  min(A) + min(B) .. max(A) + max(B) }
* C. { A(max)+B(max) }


Describe the following events:
* Case A: Both values are greater than 5.
* Case B: The sum of values is even.
* Case C: The maximum is the value of both rolls.

#### Description:
* A. { 1/6 * 1/6 } # only 6 is greater than 5
* B. { 3/6 * 3/6 + 3/6 * 3/6 } # Its even if both numbers are even or both are odd
* C. { 1/6 * 1.6 }


### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
* C. The number of hearts or spades he picks.


#### Measurable space
{ 2..Ace } * 4(4 color) * 2(2 card)
{ 2..10, 10, 10, 15 + 2..10, 10, 10, 15 }
{ 13/52, 13/52 }

#### Random Variable
* A. { 4*4/52 }
* B. { 2..10, 10, 10, 10, 15  + 2..10, 10, 10, 10, 15 }
* C. { 1/4 + 1/4 }


Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
* Case B: The sum of card values is 17.
* Case C: The value of both cards is less than 8.

* A. { 16/52 * 16/52 }
* B. { P(A+B=17) }
* C. { 4/9 * 4/9 }




### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
* B. The greatest score.
* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 

#### Measurable space
* A { 1..6 }
* B { 1..6 <= x >= 1..6 }
* C { 1/2 - (1/6)} # Before the roll, counting in the Equal
* D { 1..6 <= x >= 1..6 -y } * Coin

#### Random Variable
* A. { 1..6 * 2}
* B. { 1..6 }
* C. { 1, 0 }
* D. { 0..5 }



Describe the following events:
* Case A: The score of player A is 2.
* Case B: The greatest score is lower or equal than 2.
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  * Player A loses more than 2 coins.
  * Player A neither wins nor loses coins.
  
  
* A { 2 } 
* B { 2,1 }
* C 1) { A=6,5, B=1, 2 }
    2) { A=1,2 B=6,5,4 }
    3) { A=B }
  
  
 

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

#### Measurable space


#### Random Variable




### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?




### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 
Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.


#### Measurable space


#### Random Variable