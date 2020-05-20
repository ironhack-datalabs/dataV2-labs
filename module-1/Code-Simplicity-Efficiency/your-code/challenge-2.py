"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

# %load challenge-2.py
"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import string
import random
import sys

def random_string(length_low, length_high, batches):
    final_strings = []
    charset = string.ascii_letters + string.digits

    for i in range(batches):
        buffer = '' 
        if length_low==length_high:
            length=length_low
        elif length_low>length_high:
            sys.exit('input low cannot be higher than input high')
        else:

            length = random.choice(range(length_low, length_high))
        for i in range(length):
            char = random.choice(charset)

            buffer+=char
        final_strings.append(buffer)
    print(final_strings)
random_string(1,3,2)


