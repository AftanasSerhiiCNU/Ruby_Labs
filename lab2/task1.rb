# Блок 1. Завдання 2

nums1 = [1, 2, -3, 4, -5, 6, -7, 8, 9, -10]

sum_negative1 = 0
i = 0

while i < nums1.length
  if nums1[i] < 0
    sum_negative1 += nums1[i]
  end
  i += 1
end

sum_negative2 = nums1.select { |num| num < 0 }.sum


puts "Сума від'ємних чисел через each: #{sum_negative1}"
puts "Сума від'ємних чисел через select та sum: #{sum_negative2}"
puts ""

# Блок 1. Завдання 3

nums2 = [1, 2, 10, 3, 4, 10, 9, 5, 7, 10]

indexes_of_max_value1 = []
max_value = nums2.max
i = 0

while i < nums2.length
  if nums2[i] == max_value
    indexes_of_max_value1 << i
  end
  i += 1
end


indexes_of_max_value2 = nums2.each_index.select { |index| nums2[index] == max_value }


puts "Індекси максимального значення (#{max_value}): #{indexes_of_max_value1.join(', ')}"
puts "Індекси максимального значення (#{max_value}): #{indexes_of_max_value2.join(', ')}"