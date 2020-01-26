
text = "saaHid"

a = (text.downcase).split(//)
a = a.group_by(&:itself) 
a = a.map { |k,v| [k, v.count] } 
a = a.to_h
ar = []
a.each_value{|value| ar.push(value)}
puts ar.select{|e| e>1}.size 