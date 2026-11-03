require_relative 'methods'

students = {Serhii: 0,
            Oleh: 90,
            Vlad: 70,
            Dmytro: 63,
            Ihor: 59,
            Viktor: 67,
            Andrii: 87,
            Mykola: 90,
            Petro: 55,
            Vasyl: 10}

puts "Список студентів:"
print_arr(students)

puts "Студенти з балом 0:"
print_arr(students.select{|name, value| value == 0 || value == nil})

students.select{|name, value| value == 0 || value == nil}.each do |name, value|

  puts "Введіть середній бал для #{name}:"
  students[name] = gets.to_i
  
end

puts "Результат:"
print_arr(students)
