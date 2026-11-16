hello = Proc.new { puts "Hello" }

increase = Proc.new { |x| x + 1 }

student = Proc.new do |name, grade|
  puts "Name: #{name}, Grade: #{grade}"
end

def return_test
  test = Proc.new { 
    puts "This is a return test" 

    return "return"
  }

  test.call

  puts "after Proc.new"
end

hello.call
puts increase.call(5)
student.call("Serhii", 40, nil, 1.2)
puts return_test