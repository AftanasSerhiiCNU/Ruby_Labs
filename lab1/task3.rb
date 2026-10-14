numbers = [10, 20, 30, 40, 50]

sum_each = 0

numbers.each do |number|
  sum_each += number
end

sum_sum = numbers.sum
sum_reduce = numbers.reduce(0) { |sum, number| sum + number }

puts "Сума через each: #{sum_each}"
puts "Сума через sum: #{sum_sum}"
puts "Сума через reduce: #{sum_reduce}"