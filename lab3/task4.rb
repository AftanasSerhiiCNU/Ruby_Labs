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

min_size = students.map{|name, value| name.to_s.length}.min

print_arr(students.select{|name, value| name.to_s.length <= min_size}.first(3))
