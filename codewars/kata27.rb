def always(n)
  # ...
  return Proc.new{|x| n}
end

three = always(3)
puts three.call