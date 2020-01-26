def  tickets(peopleInLine)
    change = {25=>0,50 =>0,100 =>0}
    for money in peopleInLine
        if money == 25
            change[25] += 1
        elsif money == 50
            change[50] += 1
            change[25] -= 1
        else
            change[100] += 1
            if change[50] >= 1
                change[50] -= 1
                change[25] -= 1
            else
                change[25] -= 3
            end
        end
        if change[25] + change[50] + change[100] < 0 || change[25] < 0
            puts "NO"
        end
        
    end
    puts "yes"
end

# tickets([25, 25, 50])
tickets([25, 100])