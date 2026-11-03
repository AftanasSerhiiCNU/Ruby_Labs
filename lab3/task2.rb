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

index_array = students.to_a

puts index_array.class
print_arr(index_array)
