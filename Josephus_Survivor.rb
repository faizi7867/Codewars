def josephus_survivor(n, k)
    id =0 
     items = (0..n).to_a 
  
    loop do
      return items.first if items.length == 1
      
      items.delete_at(id)
      id = (id + k - 1) % items.size 
    end
  end
p josephus_survivor(7,3)
