{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 49,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "What is the maximal length of the hypotenus? Enter a number: 10\n",
      "The longest hypotenus possible is 10\n"
     ]
    }
   ],
   "source": [
    "\"\"\"\n",
    "You are presented with an integer number larger than 5. Your goal is to identify the longest side\n",
    "possible in a right triangle whose sides are not longer than the number you are given.\n",
    "\n",
    "For example, if you are given the number 15, there are 3 possibilities to compose right triangles:\n",
    "\n",
    "1. [3, 4, 5]\n",
    "2. [6, 8, 10]\n",
    "3. [5, 12, 13]\n",
    "\n",
    "The following function shows one way to solve the problem but the code is not ideal or efficient.\n",
    "Refactor the code based on what you have learned about code simplicity and efficiency.\n",
    "\"\"\"\n",
    "\n",
    "def my_function(X):\n",
    "    solutions = []\n",
    "    for x in range(5, (X+1)):\n",
    "        for y in range(4, (X+1)):\n",
    "            for z in range(3, (X+1)):\n",
    "                if (x*x==y*y+z*z):\n",
    "                    solutions.append([x, y, z])\n",
    "    m = 0\n",
    "    for solution in solutions:\n",
    "        if m < max(solution):\n",
    "            m = max(solution)\n",
    "    return m\n",
    "\n",
    "X = input(\"What is the maximal length of the hypotenus? Enter a number: \")\n",
    "\n",
    "print(\"The longest hypotenus possible is \" + str(my_function(int(X))))\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "What is the maximal length of the triangle hypotenuse? Enter a number: 15\n",
      "0.0\n",
      "The longest hypotenuse possible is  15\n",
      "[15, 15, 15]\n",
      "I have no idea why b is getting a value of 0.0\n"
     ]
    }
   ],
   "source": [
    "\n",
    "X = int(input(\"What is the maximal length of the triangle hypotenuse? Enter a number: \"))\n",
    "\n",
    "\n",
    "solution = []\n",
    "\n",
    "\n",
    "for a in range(5,X+1):\n",
    "    b = ((X**2) - (a**2))**.5 \n",
    "    if b == int(b):\n",
    "        solution.append(X)\n",
    "print (b)    \n",
    "#return \n",
    "    \n",
    "    \n",
    "#\n",
    "print (\"The longest hypotenuse possible is \",max(solution))\n",
    "\n",
    "print(solution)\n",
    "print('I have no idea why b is getting a value of 0.0')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.6"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
