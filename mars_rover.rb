class Rover

 attr_accessor :x_cord, :y_cord, :direction

  def initialize(x_cord, y_cord, direction)
    @x_cord = x_cord
    @y_cord = y_cord
    @direction = direction
  end
# L = left
# R = right
# M = move
  def read_instruction(instruction)
    if instruction == "M"
      move
    else
      turn(instruction)
    end
  end

  def move
    if @direction == "N"
      @y_cord = 1 + @y_cord.to_i

    elsif @direction == "S"
      @y_cord = 1 - @y_cord.to_i

    elsif @direction == "E"
      @x_cord = 1 + @x_cord.to_i

    elsif @direction == "W"
        @x_cord = 1 + @x_cord.to_i
    end
  end


  def turn(instruction)
    if @direction == "N"
      if instruction == "R"
        @direction = "E"
      elsif instruction == "L"
        @direction = "W"
      end
    elsif @direction == "S"
      if instruction == "R"
        @direction = "W"
      elsif instruction == "L"
        @direction = "E"
      end
    elsif @direction == "E"
      if instruction == "R"
        @direction = "S"
      elsif instruction == "L"
        @direction = "N"
      end
    elsif @direction == "W"
      if instruction == "L"
       @direction = "S"
      elsif instruction == "R"
        @direction = "N"
      end
    end
  end


end


puts "Input plateau size (x y):"
x, y = gets.chomp.split(" ")
puts "#{x} #{y}"

puts "Input position (x y direction):" # direction for N,S,E,W
x, y, direction = gets.chomp.split(" ")
# puts "#{x} #{y} #{direction}"

puts "Input instruction (LRM):"
instructions1 = gets.chomp.split("")


rover1 = Rover.new(x, y, direction)

puts rover1.x_cord
puts rover1.y_cord
puts rover1.direction

puts "Input position (x y direction):" # direction for N,S,E,W
x, y, direction = gets.chomp.split(" ")
# puts "#{x} #{y} #{direction}"

puts "Input instruction (LRM):"
instructions2 = gets.chomp.split("")

rover2 = Rover.new(x, y, direction)

puts rover2.x_cord
puts rover2.y_cord
puts rover2.direction

instructions1.each do |instruction1|
  rover1.read_instruction(instruction1)
end

instructions2.each do |instruction2|
  rover2.read_instruction(instruction2)
end
