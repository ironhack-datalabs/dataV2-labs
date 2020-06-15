![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. 



### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
    Sample Space = {(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),
                (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),
                (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),
                (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),
                (5,1),(5,2),(5,3),(5,4),(5,5),(5,6),
                (6,1),(6,2),(6,3),(6,4),(6,5),(6,6)}
                
    Random Variable = when rolling 2 dice you want an outcome of 1 of the combinations of the Sample Space


* B. The sum of the values obtained.
    Sample Space = {2,3,4,5,6,7,8,9,10,11,12}

    Random Variable = when rolling 2 dice the sum of the dots will be found in the Sample Space

* C. The maximum value obtained after rolling both dices.
    Sample Space = {(6,6)}
    Random Variable = when rolling 2 dice the sum of the dots is 12

Describe the following events:
* Case A: Both values are greater than 5.
    Event Subset = {(6,6)}
    Positive Outcome = when rolling 2 dice they are both 6
    Negative Outcome = when rolling 2 dice they are NOT both 6
    
* Case B: The sum of values is even.
    Event Subset = {(1,1),(1,3),(1,5),
                (2,2),(2,4),(2,6),
                (3,1),(3,3),(3,5),
                (4,2),(4,4),(4,6),
                (5,1),(5,3),(5,5),
                (6,2),(6,4),(6,6)}
    Positive Outcome = when rolling 2 dice the values are either both even or both odd.
    Negative Outcome = when jrolling 2 dice, the values are 1 even and 1 odd.
    
* Case C: The maximum is the value of both rolls.
    Event Subset = {12}
    Positive Outcome = when rolling 2 dice the sum of the dots is 12 (rolling both 6)
    Negative Outcome = when rolling 2 dice, the sum of the dots is NOT 12

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.

    Sample Space = 
                    {(N,N), (F,N), (N,F), (F,F)}
                    
            N = Number Card or Ace
            F = Face Card (K,Q,J)



<!--     Sample Space = {(KH,2H),(KH,3H),(KH,4H),
                    (KH,5H),(KH,6H),(KH,7H),
                    (KH,8H),(KH,9H),(KH,10H),
                    (KH,JH),(KH,QH),(KH,AH),
                    Same 12 with QH,
                    Same 12 with JH,
                    Same 39 with all Clubs
                    Same 39 with all Spades
                    Same 39 with all Diamonds
                    153 combos with KS,QS,JS
                    153 combos with KD,QD,JD
                    153 combos with KC,QC,JC
                    All of this x2 for positions reversed}
    KH = King of Hearts
    KC = King of Clubs
    KD = King of Diamonds
    KS = King of Spades -->
                    
    Random Variable = when picking 2 cards from a poker deck what number would be a Face Card(K,Q,J)
    
* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
    Sample Space = {12,13,14,15,16,17,18,19,20,25}
    Random Variable = When choosing 2 cards the sum of the cards will fall within the sample


* C. The number of hearts or spades he picks.
    Sample Space = {(H,H),(H,S),(H,C),(H,D),
                    (S,H),(C,H),(D,H),
                    (S,S),(S,C),(S,D),
                    (C,S),(D,S),
                    (C,C),(C,D),(D,C)}
            
            H = Heart Card
            S = Spade Card
            D = Diamond Card
            C = Club Card
            
    Random Variable = when choosing 2 cards, what number will include a Heart or Spade

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
     Event Subset = {(K,K),(K,Q),(K,J),
                    (Q,Q),(Q,K),(Q,J),
                    (J,J),(J,K),(J,Q)}
    Positive outcome = when player picks 2 cards they are both Face Cards
    Negative outcome = when player does NOT pick 2 Face Cards(K,Q,J)

* Case B: The sum of card values is 17.
    Event Subset  = {(K,7),(7,K),
                    (Q,7),(7,Q),
                    (J,7),(7,J),
                    (10,7),7,10),
                    (A,2),(2,A)}
    Positive Outcome = when 2 cards are chosen, their sum of the cards is 17
    Negative Outcome = when 2 cards are chosen, their sum is NOT 17
    
    
* Case C: The value of both cards is less than 8.
    Event Subset = {(2,2),(2,3),(2,4),(2,5),
                    (3,2),(3,3),(3,4),
                    (4,2),(4,3),
                    (5,2)}
    Positive Outcome = when 2 cards are chosen, their sum is less than 8
    Negative Outcome = when 2 cards are chosen, their sum is equal to or greater than 8
    

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
    Sample Space = {(1,2,3,4,5,6)}
    Random Variable = the number of dots on Player A die.
    
    
* B. The greatest score.
    Sample Space = {(1,2,3,4,5,6)}
    Random Variable = Player A rolls a 6
    
    
* C. The earnings of player A if the game rules state that: 
"The player with the greatest score gets a coin from the other player.".
    Sample Space = {(1,2,3,4,5,6)}
    Random variable = Each player rolls a die, if player A has more dots than player B then A wins a coin


* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 
    Sample Space = {(1,2,3,4,5,6)}
    Random Variable = Each player rolls a die, if player A has more dots than player B then A wins coins that amount to the difference between the dots. If player B has more dots than player A then A loses coins that amount to the difference between the dots.


Describe the following events:
* Case A: The score of player A is 2.
    Event Subset = {2}
    Positive Outcome = Player A rolls a (2)
    Negative outcome = Player A rolls a (1,3,4,5,or 6)
    
    
* Case B: The greatest score is lower than or equal to 2.
    Event Subset = {1,2}
    Positive outcome = Player rolls a (1 or 2)
    Negative outcome = Player rolls a (3,4,5,or 6)
    
    
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
      Event Subset = {(6,2),(6,1),(5,1)}
      Positive Outcome = Player A rolls a 6 and Player B rolls a (1 or 2) or Player A rolls a 5 and Player B rolls a 1
      Negative Outcome = Player A rolls a (1,2,3,or 4)
      
      
  * Player A loses more than 2 coins.
      Event Subset = {(1,4),(1,5),(1,6),(2,5),(2,6),(3,6)}
      Positive outcome = Player A rolls a (1) Player B rolls a (4,5,or 6) OR  Player A rolls a (2) Player B rolls a (5 or 6) OR Player A rolls a 3 and Player B rolls a 6.
      Negative outcome = Player A rolls a (4,5,or 6) OR Player A rolls a 2 and Player B rolls a 4 OR Player A rolls a 3 and Player B rolls a 5.
  
  
  * Player A neither wins nor loses coins.
      Event Subset = {(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)}
      Positive outcome = Players tie on a roll
      Negative outcomes = Players do NOT tie.

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