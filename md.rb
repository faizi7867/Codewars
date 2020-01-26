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
get_middle("faisl")