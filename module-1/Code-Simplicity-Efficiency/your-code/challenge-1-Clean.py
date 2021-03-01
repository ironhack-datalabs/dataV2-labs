"""
My simple calculator :
add or substract 2 numbers between 0 and 5
"""

import operator
ops = { "+": operator.add, "-": operator.sub }


print('Welcome to this calculator!')
print('It can add and subtract whole numbers from 0 to 5')

firstNumber = int(input('Please choose your first number (0 to 5): '))
sign = input('What do you want to do? + or -: ')
secondNumber = int(input('Please choose your second number (0 to 5): '))

try:
    result = ops[sign](firstNumber,secondNumber)
    if(firstNumber > 5 or secondNumber > 5 or firstNumber < 0 or secondNumber < 0 or (sign != '+' and sign != '-')):
        print("I am not able to answer this question. Check your input.")
    else:
        print(f'Le resultat de l\'opération {firstNumber} {sign} {secondNumber} est = {result}')
except:
    print('There was an error, please check your input')

print("Thanks for using this calculator, goodbye :)")
