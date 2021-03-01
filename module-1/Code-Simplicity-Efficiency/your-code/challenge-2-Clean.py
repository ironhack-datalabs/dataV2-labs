"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import random
import sys
import string

stringList = string.ascii_lowercase + string.digits

def RandomStringGenerator(minLength, maxLength):
    myRange = random.randint(minLength,maxLength)
    return ''.join([random.choice(stringList) for index in range(myRange)])

def BatchStringGenerator(numberOfString, minLength=8, maxLength=12):
        if minLength < maxLength:
            return [RandomStringGenerator(minLength, maxLength) for i in range(numberOfString)]
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')

minLength = int(input('Enter minimum string length: '))
maxLength = int(input('Enter maximum string length: '))
numberOfString = int(input('How many random strings to generate? '))

print(BatchStringGenerator(numberOfString, minLength, maxLength))
