# Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ

#My solution

def triangle_type (a, b, c)
  if (a+b<=c) || (c+a<=b) || (c+b<=a)
    return 0
  elsif ((a**2)+(b**2) == (c**2)) || ((b**2)+(c**2) == (a**2)) || ((a**2)+(c**2) == (b**2))
    return 2
  elsif ((a**2)+(b**2)<(c**2)) || ((b**2)+(c**2)<(a**2)) || ((a**2)+(c**2)<(b**2))
    return 3
  elsif (a+b>c)&&(a+c>b)&&(b+c>a)
    return 1
  end
end

#Best practice
def triangle_type(a, b, c)
  x, y, z = [a, b, c].sort
  return 0 if x + y <= z
  cs = x**2 + y**2 - z**2
  cs == 0 ? 2 : (cs > 0 ? 1 : 3)
end