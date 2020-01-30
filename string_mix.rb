def mix(s1, s2)
    selection = ('a'..'z').to_a.select { |letter| s1.count(letter) > 1 || s2.count(letter) > 1 }
    selection.map! do |selection|
      if s1.count(selection) > s2.count(selection)
        "1:#{selection * s1.count(selection)}"
      elsif s1.count(selection) < s2.count(selection)
        "2:#{selection * s2.count(selection)}"
      else
        "=:#{selection * s1.count(selection)}"
      end
    end
    selection.sort_by { |x| [-x.size, x[0], x[-1]] }.join("/")
  end




#   or

def comp(a, b)
    if (a.length == b.length) then return a <=> b end
    b.length < a.length ? -1 : 1
end

def mix(s1, s2)
    alpha_s1, alpha_s2 = [0] * 26, [0] * 26
    s1.each_char { |c| if ((c.ord >= 97) && (c.ord <= 122)) then alpha_s1[c.ord - 97] += 1 end }
    s2.each_char { |c| if ((c.ord >= 97) && (c.ord <= 122)) then alpha_s2[c.ord - 97] += 1 end }
    res = ""
    i = 0
    while (i < 26)
        sm = [alpha_s1[i], alpha_s2[i]].max
        if (sm > 1) then
            if (sm > alpha_s1[i]) then
                res += 2.to_s + ":"
                res += (i + 97).chr * sm
                res += "/"
            elsif (sm > alpha_s2[i]) then
                res += 1.to_s + ":"
                res += (i + 97).chr * sm
                res += "/"
            elsif (alpha_s1[i] == alpha_s2[i]) then
                res += "=:"
                res += (i + 97).chr * sm
                res += "/"
            end
        end
        i += 1
    end   
    l = res[0..-1].split('/').sort { |x, y| comp(x, y) }.join("/")
end