def hello
  puts "Hello"
  yield
end

hello {}
hello { puts "World" }


def increment(x)
  yield x + 1
end

increment(5) { |result| puts result }
