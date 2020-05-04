
Use 4 spaces per indentation level - Spaces are the preferred indentation method.
Limit all lines to a maximum of 79 characters.

Line Break Before a Binary Operator!

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

Error catching:
When catching operating system errors, prefer the explicit exception hierarchy introduced in Python 3.3 over introspection of errno values.


Classes:
Class names should normally use the CapWords convention.
To avoid name clashes with subclasses, use two leading underscores to invoke Python's name mangling rules.


