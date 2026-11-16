class Number
  def initialize(value)
    @value = value
  end

  def +(other)
    Number.new(@value + other.value)
  end

  def -(other)
    Number.new(@value - other.value)
  end

  def value=(other)
    @value = other
  end

  def value
    @value
  end
end

a = Number.new(10)
b = Number.new(5)

puts (a + b).value
puts (a - b).value

b.value = 10

puts (a + b).value
puts (a - b).value