# You are given an array (which will have a length of at least 3,
# but could be very large) containing integers. The array is either
# entirely comprised of odd integers or entirely comprised of even 
# integers except for a single integer N. Write a method that takes
# the array as an argument and returns this "outlier" N.
# SOLITION
def find_outlier(integers)
    even_num = integers.count{ |x| x % 2 == 0 }    
    odd_num = integers.count{ |x| x % 2 != 0 }
    if even_num > odd_num
      integers.each { |x| return x unless x % 2 == 0 }    
    else
      integers.each { |x| return x if x % 2 == 0}    
    end
  end
  p find_outlier([1,21,21,21,21,4])