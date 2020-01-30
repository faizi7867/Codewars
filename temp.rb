def  first_non_repeating_letter(s) 
    oarr,ouniq =[],[]
    arr = s.chars
    for i in arr
        oarr.append(i.ord)
    end
    unique = arr.uniq
    for i in unique
        ouniq.append(i.ord)
    end
    dif = ouniq.difference(oarr)


    print dif
    # print ouniq

    # arr = (str.chars).ord

    #  print arr
    # unique = arr.uniq
    # dif = unique.difference(arr)
    # # puts dif

    # (arr - (arr.difference(arr.uniq)))
  end

  first_non_repeating_letter('stress')  