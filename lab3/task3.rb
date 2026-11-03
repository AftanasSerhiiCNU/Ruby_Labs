require_relative 'methods'

students = {
  Serhii: 70,
  Oleh: 90,
  Vlad: 70,
  Dmytro: 63,
  Ihor: 59,
  Viktor: 67,
  Andrii: 87,
  Mykola: 90,
  Petro: 55,
  Vasyl: 99
}

puts "Оберіть за чим сортувати масив"
puts "Іменем: 0"
puts "Середнім балом 1"

value = gets.to_i

if value == 0

  sorted_by_name = students.sort_by{|name, value| name}
  print_arr(sorted_by_name)

elsif value == 1

  sorted_by_value = students.sort_by{|name, value| value}
  print_arr(sorted_by_value)

else
  puts "Помилка!"
end