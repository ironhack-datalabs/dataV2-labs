"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

dict_num = {'zero':0,'one':1, 'two':2,'three':3,'four':4, 'five':5}

if not a in dict_num:
    print("I am not able to answer this question. Check your input.")
elif not c in dict_num:
    print("I am not able to answer this question. Check your input.")
elif b != 'plus' or b != 'minus':
    print("I am not able to answer this question. Check your input.")
else:
    number_to_text = ['zero', 'one', 'two', 'three', 'four', 'five']

    num_a = dict_num [a]
    num_c = dict_num [c]

    result = 0
    if b == 'plus':
        result = num_a + num_c
    else:
        result = num_a - num_c
    
    print(a, b, c, 'equals', number_to_text[result])