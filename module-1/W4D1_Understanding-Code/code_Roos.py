#!/usr/bin/env python
# coding: utf-8
# In[ ]:
"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.
The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""
# In[ ]:
# I seperated the code and put it in different functions
## so that each function does only one thing
# In[ ]:
# I made the userinput lowercase friendly
# In[ ]:
# I gave variables a more descriptive name
# In[149]:
# Ask for first user input in words
print("Welcome to this calculator!")
print("It can add and subtract whole numbers from zero to five")
inputWord = []
if len(inputWord) < 1:
   word = input("Please choose your first number (zero to five): ").lower()
   inputWord.append(word)
   print(inputWord)
# In[150]:
# Ask for plus or minus in words
if len(inputWord) < 2:
   word = input("What do you want to do? plus or minus: ").lower()
   inputWord.append(word)
   print(inputWord)
# In[151]:
# Ask for second user input in words
if len(inputWord) < 3:
   word = input("Please choose your second number (zero to five): ").lower()
   inputWord.append(word)
   print(inputWord)
# In[152]:
# Convert words into numbers
inputNumber = []
for x in inputWord:
   if x == "zero":
       inputNumber.append("0")
   elif x == "one":
       inputNumber.append("1")
   elif x == "two":
       inputNumber.append("2")
   elif x == "three":
       inputNumber.append("3")
   elif x == "four":
       inputNumber.append("4")
   elif x == "five":
       inputNumber.append("5")
   elif x == "plus":
       inputNumber.append("+")
   elif x == "minus":
       inputNumber.append("-")
   else:
       print("Something went wrong")
print(inputNumber)
# In[153]:
if inputNumber[1] == "+":
   result = int(inputNumber[0]) + int(inputNumber[2])
   inputNumber.append(str(result))
elif inputNumber[1] == "-":
   result = int(inputNumber[0]) - int(inputNumber[2])
   inputNumber.append(str(result))
else:
   print("I am not able to read plus or minus")
print(inputNumber)
# In[154]:
# Convert numbers into words
outputWord = []
for x in inputNumber:
   if x == "0":
       outputWord.append("zero")
   elif x == "1":
       outputWord.append("one")
   elif x == "2":
       outputWord.append("two")
   elif x == "3":
       outputWord.append("three")
   elif x == "4":
       outputWord.append("four")
   elif x == "5":
       outputWord.append("five")
   elif x == "6":
       outputWord.append("six")
   elif x == "7":
       outputWord.append("seven")
   elif x == "8":
       outputWord.append("eight")
   elif x == "9":
       outputWord.append("nine")
   elif x == "10":
       outputWord.append("ten")
   elif x == "+":
       outputWord.append("plus")
   elif x == "-":
       outputWord.append("minus")
   else:
       print("Something went wrong")
print(outputWord)
# In[123]:
# Calculate result
print(outputWord[0], outputWord[1], outputWord[2], "equals", outputWord[3])
# "four minus zero equals four
# In[ ]:
def reStart():

   answer = input("Do you want to calculate another time? Enter yes or no. ").lower()
   if answer == "yes":
       print("Let's calculate some more!")
       userInput()
   elif answer == "no":
       print("Alright, thank you and goodbye!")
   else:
       print("Sorry, I don't understand. Please enter yes or no.")
       reStart()
# In[ ]:
userInput()
reStart()
# In[ ]:
