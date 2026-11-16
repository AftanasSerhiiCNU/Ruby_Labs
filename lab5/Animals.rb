  module Movable
    def move
      puts "#{@name} рухається"
    end
  end

  module Swimmable
    def swim
      puts "#{@name} плаває"
    end
  end

  class Animal
    include Movable

    attr_reader :name, :age

    def initialize(name, age)
      @name = name
      self.age = age
    end

    def age=(value)
      raise ArgumentError, "Вік не може бути від'ємним" if value < 0
      @age = value
    end

    def info
      puts "Тварина: #{@name}, вік: #{@age}"
    end

    def make_sound
      puts "#{@name} видає звук"
    end

    private

    def sleep
      puts "#{@name} спить"
    end
  end

  class Mammal < Animal
    def initialize(name, age, fur_color)
      super(name, age)
      @fur_color = fur_color
    end

    def info
      super
      puts "Колір шерсті: #{@fur_color}"
    end

    def make_sound
      puts "#{@name} гарчить"
    end

    def run
      puts "#{@name} біжить"
    end
  end

  class Bird < Animal
    def initialize(name, age, wingspan)
      super(name, age)
      @wingspan = wingspan
    end

    def info
      super
      puts "Розмах крил: #{@wingspan} см"
    end

    def make_sound
      puts "#{@name} цвірінькає"
    end

    def fly
      puts "#{@name} летить"
    end
  end

  class Fish < Animal
    include Swimmable

    def initialize(name, age, water_type)
      super(name, age)
      @water_type = water_type
    end

    def info
      super
      puts "Тип води: #{@water_type}"
    end

    def make_sound
      puts "#{@name} не видає чутних звуків"
    end

    def dive
      puts "#{@name} пірнає"
    end
  end

  dog = Mammal.new("Собака", 5, "Коричневий")
  parrot = Bird.new("Папуга", 2, 35)
  shark = Fish.new("Акула", 8, "Солона")

  puts "Інформація про тварин:"
  dog.info
  parrot.info
  shark.info

  puts "\nПоліморфізм:"
  animals = [dog, parrot, shark]
  animals.each { |animal| animal.make_sound }

  puts "\nОсоблива поведінка:"
  dog.run
  parrot.fly
  shark.swim
  shark.dive

  puts "\nРобота з модулями:"
  dog.move
  parrot.move
  shark.move

  puts "\nГеттери та сеттери:"
  puts "Поточний вік собаки: #{dog.age}"
  dog.age = 6
  puts "Новий вік собаки: #{dog.age}"

  puts "\nСинглтон-методи:"
  def dog.make_sound
    puts "#{@name} гавкає"
  end

  dog.make_sound
  parrot.make_sound

  class << dog
    def make_sound
      puts "#{@name} голосно гавкає!"
    end
  end

  dog.make_sound

  puts "\nПеревірка інкапсуляції:"
  puts "Метод sleep приватний: #{dog.private_methods.include?(:sleep)}"