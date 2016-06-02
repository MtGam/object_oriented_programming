#1 added class 'Cat'
#2 gave cat attributes
#3 added initialize method
class Cat

  def initialize(cat_name, preferred_food, meal_time)
    @cat_name = cat_name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def cat_name
    @cat_name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time
    @meal_time
  end

#4
  def eats_at
    @meal_time
     if @meal_time > 12
      "#{@meal_time - 12}pm"
     else
      "#{@meal_time}am"
     end
  end


#5 Cat introduction with string method
  def meow
    "My name is #{@cat_name} and I eat at #{eats_at}"
  end



end
