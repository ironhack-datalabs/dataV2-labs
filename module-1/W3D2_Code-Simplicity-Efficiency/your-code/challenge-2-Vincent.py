"""
The code below generates a given number of random strings that consists of numbers and
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random
import string

def RandomStringGenerator(x):
    return ''.join(random.choice(string.ascii_lowercase + string.digits) for i in range(x))

def BatchStringGenerator(n, a, b):
    r = []
    for i in range(n):
        if a < b:
            c = random.choice(range(a, b))
        elif a == b:
            c = a
        else:
            print('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(c))
    return r

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))
