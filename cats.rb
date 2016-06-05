#1 added class 'Cat'
#2 gave cat attributes
#3 added initialize method
class Cat

  def initialize(cat_name, preferred_food, meal_time)
    @cat_name = cat_name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def cat_name #Kat
    @cat_name
  end

  def preferred_food #fish
    @preferred_food
  end

  def meal_time #13:00hr
    @meal_time
  end

#4 defined meal time in am/pm on a 24hr clock
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
    puts "My name is #{@cat_name} and I eat at #{eats_at}."
  end



end

cat = Cat.new("Kat", "fish", "noon",)
