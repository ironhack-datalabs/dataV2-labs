
"""
You are presented with an integer number larger than 5. 
Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:
1. [3, 4, 5] [6, 8, 10] [5, 12, 13]
"""


def triangles(numb):
    numb_list = list(range(1, numb))
    triangles = []
    for a in numb_list:
        for b in numb_list:
            for c in numb_list:
                if a**2==b**2+c**2:
                    sidelist = [a,b,c]
                    triangles.append(sorted(sidelist))
    triangles = set(tuple(i) for i in triangles)
    for t in triangles:
        print(list(t))
triangles(15)


