class Item

tax = 0.10
import_tax = 0.05

attr_accessor :exempt
attr_accessor :cost
attr_accessor :name
attr_accessor :imported

attr_reader :tax
attr_reader :item_total

def initialize(exempt, cost, name)
  @exempt = exempt
  @cost = cost
  @name = name
  @imported = imported
  @tax = 0
  @item_total = 0
end

def calculate_total
  @item_total = @cost + calculated_tax
end

def calculate_tax
tax = 0
  if @exempt == true && @imported == false
    @tax = 0

  elsif @exempt == true && @imported == true
    @tax = @cost * (import_tax)

  elsif @exempt == false && @imported == true
    @tax = @cost * (tax_sales + import_duty)

  elsif @exempt == false && @imported == false
    @tax = @cost * (tax_sales)
end
 @tax = tax
 return tax

end



class Receipt

  attr_reader :items

  def initialize()

    @items = []

  def add(item)
    @items << items
  end
