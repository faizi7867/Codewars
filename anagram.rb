def anagrams(word, words)
    ar = []
    for i in words
        if i.split("").sort.join("") ==  word.split("").sort.join("") 
        ar.append(i)
        end
        
    end
    return ar

end
  
  
anagrams('ab', ["ab", "ba", "aa", "bb", "cc", "ac", "bc", "cd"])