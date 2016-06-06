class Item

  attr_accessor :name, :cost, :exempt, :imported

  attr_reader :tax, :item_total


  def initialize(name, cost, exempt, imported)
    @name = name
    @cost = cost
    @exempt = exempt
    @imported = imported
    @tax = 0
    @item_total = 0
  end


  def calculate_tax
    sales_tax = 0.10
    import_tax = 0.05

    if @exempt == true && @imported == false
      @tax = 0

    elsif @exempt == true && @imported == true
      @tax = @cost * (import_tax)

    elsif @exempt == false && @imported == true
      @tax = @cost * (sales_tax + import_tax)

    elsif @exempt == false && @imported == false
      @tax = @cost * (sales_tax)

    end
  end


  def calculate_total
    @item_total = @cost.to_f + calculate_tax
  end


end


class Receipt

  attr_reader :items

  def initialize
    @items = []
    @total_tax = 0
    @total_cost = 0

  def add(item)
    @items << item
  end


end



book = Item.new('book', 12.49, true, false)
music_cd = Item.new('music cd', 14.99, false, true)
chocolate_bar = Item.new('Twix', 0.85, true, false)

box_chocolate1 = Item.new('Lindt', 10.50, false, true)
perfume1 = Item.new('Chanel', 54.65, false, true)

perfume2 = Item.new('Swiss', 27.99, false, true)
perfume3 = Item.new('Nautica',18.99, false, false)
head_pills = Item.new('Advil', 9.75, true, false)
box_chocolate2 = Item.new('Lindt2', 11.25, false, true)
