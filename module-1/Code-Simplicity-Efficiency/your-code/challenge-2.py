"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.
"""
import random
import sys

def RandomStringGenerator(desired_len=12, characters ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    string = ''
    while (len(string) < desired_len):
        string += random.choice(characters)
    return string

def BatchStringGenerator(n, min_len=8, max_len=12):
    r = []
    for i in range(n):
        desired_len = None
        if min_len < max_len:
            desired_len = random.choice(range(min_len, max_len))
        elif min_len == max_len:
            desired_len = min_len
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(desired_len))
    return r

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))
