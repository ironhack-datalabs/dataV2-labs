## Code Lay-out
# Correct:

# Aligned with opening delimiter.
foo = long_function_name(var_one, var_two,
                         var_three, var_four)

# Add 4 spaces (an extra level of indentation) to distinguish arguments from the rest.
def long_function_name(
        var_one, var_two, var_three,
        var_four):
    print(var_one)

# Hanging indents should add a level.
foo = long_function_name(
    var_one, var_two,
    var_three, var_four)

# Wrong:

# Arguments on first line forbidden when not using vertical alignment.
foo = long_function_name(var_one, var_two,
    var_three, var_four)

# Further indentation required as indentation is not distinguishable.
def long_function_name(
    var_one, var_two, var_three,
    var_four):
    print(var_one)

# The closing brace/bracket/parenthesis on multiline constructs may either line up under the first non-whitespace character of the last line of list, as in:

my_list = [
    1, 2, 3,
    4, 5, 6,
    ]
result = some_function_that_takes_arguments(
    'a', 'b', 'c',
    'd', 'e', 'f',
    )

# or it may be lined up under the first character of the line that starts the multiline construct, as in:

my_list = [
    1, 2, 3,
    4, 5, 6,
]
result = some_function_that_takes_arguments(
    'a', 'b', 'c',
    'd', 'e', 'f',
)

## Tabs or Spaces?
Spaces are the preferred indentation method.

Tabs should be used solely to remain consistent with code that is already indented with tabs.

Python 3 disallows mixing the use of tabs and spaces for indentation.

Python 2 code indented with a mixture of tabs and spaces should be converted to using spaces exclusively.

When invoking the Python 2 command line interpreter with the -t option, it issues warnings about code that illegally mixes tabs and spaces. When using -tt these warnings become errors. These options are highly recommended!

## Maximum line length 
Limit all lines to a maximum of 79 characters.
For flowing long blocks of text with fewer structural restrictions (docstrings or comments), the line length should be limited to 72 characters.

## Toujours utiliser les caractères en lower case pour nommer les attributs : 
comme_ceci

## séparer_les_élements_par_des_underscore

## Constants
Constants are usually defined on a module level and written in all capital letters with underscores separating words. Examples include MAX_OVERFLOW and TOTAL.

Never use the characters 'l' (lowercase letter el), 'O' (uppercase letter oh), or 'I' (uppercase letter eye) as single character variable names.

## Functions and Method Arguments 
Always use self for the first argument to instance methods.

Always use cls for the first argument to class methods.

## Programming recommendations

Use is not operator rather than not ... is. While both expressions are functionally identical, the former is more readable and preferred:

# Correct:
if foo is not None:
# Wrong:
if not foo is None:

Always use a def statement instead of an assignment statement that binds a lambda expression directly to an identifier:

# Correct:
def f(x): return 2*x
# Wrong:
f = lambda x: 2*x

- Don't compare boolean values to True or False using ==:

# Correct:
if greeting:
# Wrong:
if greeting == True:
Worse:

# Wrong:
if greeting is True: