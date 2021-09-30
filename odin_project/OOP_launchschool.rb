=begin
class GoodDog
  def initialize(name)
    @name = name
  end

  # def get_name
  #   @name
  # end

  def name 
    @name
  end

  # def set_name=(name)
  #   @name = name
  # end

  def name=(n)
    @name = n
  end

  def speak 
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name

fido = GoodDog.new("Fido")
puts fido.speak
=end 

=begin
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    # @name = n
    self.name = n
    # @height = h
    self.height = h
    # @weight = w
    self.weight = w
  end

  def info 
    "#{name} weighs #{weight} and is #{height} tall"
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
=end

=begin
class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def spray_paint(color)
    @color = color
  end

  def view_year_model(year, model)
    @year = year
    @model = model
  end

  def car_info
    "The color of your #{model} is #{color} and the year is #{year}"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate by #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate by #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def turn_off
    @current_speed = 0
    puts "Park this car appropriately"
  end

  def self.gas_mileage(gallons, miles)
    puts "The gas mileage is #{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{model}"
  end

end

fortuner = MyCar.new(2018, "brown", "toyota fortuner")
my_car = MyCar.new(2010, "silver", "Ford Focus")
MyCar.gas_mileage(13, 351)
puts fortuner.car_info
puts my_car.to_s
fortuner.speed_up(100)
fortuner.speed_up(50)
fortuner.current_speed
fortuner.brake(40)
fortuner.current_speed
fortuner.brake(10)
fortuner.current_speed
fortuner.turn_off
fortuner.current_speed

fortuner.spray_paint("pearl white")
puts fortuner.car_info
=end

=begin
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs # => 2

dog3 = GoodDog.new

puts GoodDog.total_number_of_dogs # => 3
=end

=begin
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age
puts sparky # => This dog's name is Sparky and is 28 in dog years.
puts sparky.to_s
p sparky # => #<GoodDog:0x007fe54229b358 @name="Sparky", @age=28> --- this is used like the inspect method for debugging purposes 
=end

=begin
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  puts self
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
=end

=begin
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
end

bob = Person.new("Steve")
puts bob.name = "Bob"
=end

