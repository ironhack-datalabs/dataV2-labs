Create Pseudo code // diagram before starting to code.

Function names should be lowercase, with words separated by underscores as necessary to improve readability.

Variable names follow the same convention as function names.

mixedCase is allowed only in contexts where that's already the prevailing style (e.g. threading.py), to retain backwards compatibility.

Library name should not be the same as any kind of call within the program, because it cannot be imported if its the same name.

Simple is better than complex

Explicit is better than implicit.

Complex is better than complicated

Flat is better than nested

Special cases aren't special enough to break the rules

In the face of ambiguity, refuse the temptation to guess

There should be one -- and preferably only one -- obvious way to do it

If the implementation is easy to explain, it may be a good idea. But anyway, some ideas are just bad, regardless of whether they are easy to implement or not.

##########################################

Use 4 spaces per indentation level - Spaces are the preferred indentation method.

Limit all lines to a maximum of 79 characters.

Should a Line Break Before a Binary Operator!

Code in the core Python distribution should always use UTF-8

Imports
Imports should usually be on separate lines and should be grouped in the following order:
-Standard library imports.
-Related third party imports.
-Local application/library specific imports.
-Wildcard imports (from <module> import *) should be avoided
-Module level "dunders" (i.e. names with two leading and two trailing underscores) such as __all__, __author__, __version__, etc. should be placed after the module docstring but before any import statements

Comments/Docstring
Use inline comments sparingly.
Write docstrings for all public modules, functions, classes, and methods. Docstrings are not necessary for non-public methods, but you should have a comment that describes what the method does. This comment should appear after the def line.
Comments that contradict the code are worse than no comments. Always make a priority of keeping the comments up-to-date when the code changes!


