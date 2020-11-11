class MyCar

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end

  def shut_off
    @speed = 0
  end

  def current_speed
    puts "You are current going at #{@speed} km/h"
  end
end

ferrari = MyCar.new(1950, 'red', 'ABC')
ferrari.speed_up(50)
ferrari.current_speed
puts ferrari.color
ferrari.color = 'yellow'
puts ferrari.color

puts ferrari.year
ferrari.brake(20)
ferrari.current_speed