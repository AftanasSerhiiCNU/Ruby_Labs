def less_than_three?(x)
  x < 3
end

def is_array_empty?(arr)
  arr.empty?
end

def is_string_empty?(str)
  if str.length == 0
    return true
  else
    return false
  end
end

puts less_than_three? 2
puts is_array_empty? []
puts is_string_empty? "Hello"