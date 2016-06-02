# created class
class Paperboy



  def initialize(name,quota,experience,side,earnings)
    @name = name
    @quota = 50
    @experience = experience
    @side = side
    @earnings = earnings
  end


  def quota
    (experience/2) + 50
  end



end
