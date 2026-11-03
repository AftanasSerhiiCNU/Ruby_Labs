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

puts "Введіть ім'я студента:"
name = gets.chomp

grade = students[name.to_sym]

if grade
  puts "Оцінка студента #{name} = #{grade}"
else
  puts "Студента не знайдено"
end