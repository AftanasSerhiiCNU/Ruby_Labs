names = ["Олександр", "Анна", "Іван", "Олена", "Сергій", "Андрій", "Марія"]

result = names.select { |name| name.start_with?("О", "А") }
              .map(&:upcase)

puts result