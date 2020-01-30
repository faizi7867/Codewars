# text = "foo001"
# text = text.split(//)
# temp = text

# a = []
# for i in text
#     if i = /[a-z]/
#         temp.delete_at(0)
#     end
     
# end
# p temp.join()


text = "foo0001"
a = []
c  = []
ar = text.split("")
for i in ar 
    if  i =~ /[[:digit:]]/
        i = i.to_i
        a.append(i)
    else
        c.append(i)
    end
end 
num =  a.join("")
snum =  (num.to_i)+1
p c.append(snum).join("")
        
