class Item

sales_tax = 0.10
import_tax = 0.05

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
tax = 0
  if @exempt == true && @imported == false
    @tax = 0

  elsif @exempt == true && @imported == true
    @tax = @cost * (import_tax)

  elsif @exempt == false && @imported == true
    @tax = @cost * (sales_tax + import_tax)

  elsif @exempt == false && @imported == false
    @tax = @cost * (sales_tax)
end

 @tax = tax
 return tax


 def calculate_total
   @item_total = @cost + calculated_tax
 end



end


#
# class Receipt
#
#   attr_reader :items
#
#   def initialize()
#
#     @items = []
#
#   def add(item)
#     @items << items
#   end
