products = [
  { name: "Ноутбук", price: 30000, category: :tech },
  { name: "Телефон", price: 20000, category: :tech },
  { name: "Навушники", price: 5000, category: :tech },
  { name: "Футболка", price: 1000, category: :clothes },
  { name: "Куртка", price: 4000, category: :clothes },
  { name: "Джинси", price: 2500, category: :clothes },
  { name: "Книга", price: 500, category: :books },
  { name: "Підручник", price: 800, category: :books }
]

grouped = products.group_by { |product| product[:category] }

grouped.each do |category, items|
  average_price = items.sum { |item| item[:price] }.to_f / items.length
  puts "#{category}: середня ціна = #{average_price}"
end