# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.

def find_short(s)
    ar = (s.split).map { |k| k.size }.sort
    p ar[0]
  end


# or   s.split.map(&:size).min  