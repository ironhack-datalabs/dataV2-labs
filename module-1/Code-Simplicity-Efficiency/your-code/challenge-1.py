"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

error = 'I am not able to answer this question. Check your input.\n'
thanks = 'Thanks for using this calculator, goodbye :)'
num_range = [num for num in range(1,6)]
num_range.append('+')
num_range.append('-')
num1 = input('Please choose first number (1-5): ')
operation = input('Please choose + or - ?: ')
num2 = input('Please choose second number (1-5): ')


def count(num1=num1, operation=operation, num2=num2):
    while num1 in str(num_range) and num2 in str(num_range):
        try:
            num1 = int(num1)
            num2 = int(num2)
            if operation is '+':
                result = num1 + num2
                print(f'{num1}{operation}{num2}={result}')
                break
            elif operation is '-':
                result = num1 - num2
                print(f'{num1}{operation}{num2}={result}')

                break
        except:
            print(error)
            break
            
    else:
        print(error)
    print(thanks)

count()
