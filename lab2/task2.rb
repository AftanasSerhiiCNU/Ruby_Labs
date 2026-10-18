# Блок 2. Завдання 2
puts "Завдання 2"

matrix = [
  [4, 8, 9, 2],
  [7, 1, 3, 5],
  [6, 2, 7, 4],
  [9, 5, 1, 8]
]

n1 = 0
i = 0

while i < matrix.length - 1
  j = i + 1

  while j < matrix.length
    if matrix[i][n1] > matrix[j][n1]
      matrix[i][n1], matrix[j][n1] = matrix[j][n1], matrix[i][n1]
    end
    j += 1
  end

  i += 1
end

puts "Спосіб 1:"
matrix.each { |row| p row }

n2 = 1

sorted_column = matrix.map { |row| row[n2] }.sort

matrix.each_with_index do |row, index|
  row[n2] = sorted_column[index]
end

puts "Спосіб 2:"
matrix.each { |row| p row }
puts  "Завдання 3"

# Блок 2. Завдання 3

matrix1 = [
  [4, 8, 9, 2],
  [7, 1, 3, 5],
  [6, 2, 9, 4],
  [9, 5, 1, 8]
]

max_value = matrix1.flatten.max

i = 0

while i < matrix1.length
  if matrix1[i].include?(max_value)
    j = 0

    while j < matrix1[i].length - 1
      k = j + 1

      while k < matrix1[i].length
        if matrix1[i][j] > matrix1[i][k]
          matrix1[i][j], matrix1[i][k] = matrix1[i][k], matrix1[i][j]
        end
        k += 1
      end

      j += 1
    end
  end

  i += 1
end

puts "Спосіб 1:"
matrix1.each { |row| p row }

matrix2 = [
  [4, 8, 9, 2],
  [7, 1, 3, 5],
  [6, 2, 9, 4],
  [9, 5, 1, 8]
]

max_value = matrix2.flatten.max

matrix2.each do |row|
  row.sort! if row.include?(max_value)
end

puts "Спосіб 2:"
matrix2.each { |row| p row }