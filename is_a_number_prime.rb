# Define a function that takes an integer argument and returns logical 
# value true or false depending on if the integer is a prime.


require 'prime'
def isPrime(num)
   Prime.prime?(num) 
end