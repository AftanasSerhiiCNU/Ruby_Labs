student = lambda { |name, grade|
  puts "Name: #{name}, Grade: #{grade}"
}

def return_test
  test = lambda { 
    puts "This is a return test" 

    return "return"
  }

  test.call

  puts "after Proc.new"
end

student.call("Serhii", 40)
puts return_test