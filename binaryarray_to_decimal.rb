# Given an array of ones and zeroes, convert the equivalent binary value to an integer.

# # Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.
# Testing: [0, 0, 0, 1] ==> 1
# Testing: [0, 0, 1, 0] ==> 2
# Testing: [0, 1, 0, 1] ==> 5
# Testing: [1, 0, 0, 1] ==> 9
# Testing: [0, 0, 1, 0] ==> 2
# Testing: [0, 1, 1, 0] ==> 6
# Testing: [1, 1, 1, 1] ==> 15


def binary_array_to_number(arr)
    j = arr.join("").to_i
    temp = j
    dec = 0
    basev = 1
    while temp != 0  do
        ld = temp % 10
        temp = (temp/10).to_i
        dec += (ld * basev)
        basev = basev * 2
    end

puts dec  
end 


# or

def binary_array_to_number(arr)
    j = arr.join("")
    j.to_i(2)
end
binary_array_to_number([0,0,0,1])