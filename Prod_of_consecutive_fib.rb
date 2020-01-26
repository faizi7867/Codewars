# F(n) = F(n-1) + F(n-2) where F(0) = 0 and F(1) = 1.
#
# Check that given prod, such exists as F(n) * F(n+1) = prod.
# In that case retun `[F(n), F(n+1), true]`.
#
# Else return `[F(m), F(m+1), false]` with
# F(m) being smallest one F(m) + F(m+1) > prod.



def productFib(prod)
    a, b = [0, 1]
    while prod > a * b
      a, b = [b, a + b]
    end
    [a, b, prod == a * b]  
  end
  