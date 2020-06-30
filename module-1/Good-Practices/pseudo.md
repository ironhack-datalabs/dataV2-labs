FUNCTION Fibonacci (input N as Integer)

  IF n < 0 THEN

    ERROR - Can't be less than zero

  ELSE IF n < 2 THEN

    RETURN n  // Fibonacci(0) = 0 and Fibonacci(1) = 1

  ELSE

    RETURN Fibonacci(n-1) + Fibonacci(n-2) // sum of previous two Fibonacci numbers 
----------------------------------
FibArray = [0,1] 
  
def fibonacci(n): 
    if n<0: 
        print("Incorrect input") 
    elif n<=len(FibArray): 
        return FibArray[n-1] 
    else: 
        temp_fib = fibonacci(n-1)+fibonacci(n-2) 
        FibArray.append(temp_fib) 
        return temp_fib 
  
print(fibonacci(9)) 
