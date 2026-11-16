def doble_array(array)
  array.map { |x| x * 2 }
end

def double_hash(hash)
  hash.each { |key, value| hash[key] = value * 2 }
end

p doble_array([1, 2, 3, 4, 5])
puts double_hash({ a: 1, b: 2, c: 3 })