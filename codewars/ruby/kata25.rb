#6Kyu

# Implement a change function that performs at O(n) (we will test for this).

# The function will accept an integer parameter that represents cents, and returns the optimal change using the least number of coins.

# The function should return a hash containing a key for each coin of US currency (specifically 25¢ 10¢ 5¢ and 1¢ coins -- don't use 50¢ or 100¢ coins). The value of each coin should represent the count of each coin in the change.

# The function should return a hash with all coin count values set to 0 if the cents parameter is less than or equal to 0.

#my solution

def change(cents)

  coins = {25 => (coin25=0), 10 => (coin10=0), 5 => (coin5=0), 1 => (coin1=0)}

  if cents>0
    if cents>=25
      coin25 = cents/25
      cents = cents%25
    end
    if cents>=10
      coin10 = cents/10
      cents = cents%10
    end
    if cents >=5
      coin5= cents/5
      cents = cents%5
    end
    if cents>=1
      coin1 = cents
    end
  end
  coins = {25=>coin25, 10=> coin10, 5=>coin5, 1=>coin1}  

end



#Best practice
def change(cents)
  [25, 10, 5, 1].map.with_object({}) { |c, h|
    h[c] = cents > 0 ? cents / c : 0
    cents -= h[c] * c
  }
end

#Learn- can ask the result of map to map with any objject here its hash.  