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

end

fortuner = MyCar.new(2018, "brown", "toyota fortuner")
puts fortuner.car_info
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