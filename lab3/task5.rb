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

print_arr(students)

print_arr(students.sort_by{|name, value| value}.first(5))
