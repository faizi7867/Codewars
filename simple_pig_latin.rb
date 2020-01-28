def pig_it text
    n = text.split(" ")
    for i in n do
        if i != "!"
             i[i.length] = i[0]
              i[0] = ""
               i[i.length]="a"
              i[i.length]="y"
        end
    end
    s =  n.join(" ").to_s

    p s

end
pig_it('Hello world !')

# another solution but little problem

# str = "as good day as today !"
# arr = str.split()
# @myarray = []
# # print arr
# arr.each do |val|
#     earr =  val.split(//) 
    
#     felem =  earr.shift

#     res = Array(earr.push(felem))

#     p res
#     for i in 0 .. res.size
#         if i != "!"
#         res = res.append("a","y")
#         end
#     end


#     # p res.join("")

#     @myarray.push(res.join(""))
  
# end
# return @myarray.join(" ")





  

    


 


    