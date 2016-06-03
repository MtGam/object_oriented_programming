# created class
class Paperboy

  attr_accessor :name, :experience, :side

  attr_reader :earnings

  def initialize(name, side)
    @name = name
    @experience = 0
    @side = side
    @earnings = 0
  end


  def quota
    (@experience/2) + 50 #minimum number of papers to deliver=50

  end


  def deliver(start_address, end_address)
    num_houses = end_address - start_address
    # with the assumption that start adddress as less than end address
    @experience += num_houses
    pay = num_houses.to_f * 0.25
    @earnings = @earnings + pay
    return pay
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings}."
  end

end
