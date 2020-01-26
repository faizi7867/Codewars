# You are going to be given a word. Your job is to return the middle 
# character of the word. If the word's length is odd, return the middle
#  character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
    ar = s.split(//)
    ar_len = ar.length
    if ar_len % 2 != 0
      arr = ar_len/2.ceil
      p ar[arr]
    else    
      arr = ar_len/2
      puts "#{ar[arr-1]}#{ar[arr] }"
    end
  end


# l = a.each {|keys,value| value if value >= 2}print l

# OR

def get_middle(s)
    p s[(s.size-1)/2..s.size/2]
  end
  
  get_middle("sahida")