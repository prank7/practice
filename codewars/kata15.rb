def _if(bool, ifTrue, ifFalse)
  bool ? ifTrue : ifFalse
end

puts _if(false, true, false)