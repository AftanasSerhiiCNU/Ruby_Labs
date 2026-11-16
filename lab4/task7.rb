def add(a, b)
  a + b
end

puts (1..3).map{ |x| add(x, 2) }

hi = ""

(1..5).map do hi << " Привіт!"; hi end

puts hi