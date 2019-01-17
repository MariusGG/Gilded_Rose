require 'item'

class BackstagePasses < Item
  def update_item
    update_sell_in
    update_quality
   end

   def update_quality
     @quality += 1
     @quality += 1 if @sell_in < 10
     @quality += 1 if @sell_in < 5
     @quality = 0 if @sell_in <= 0
     @quality = 0 if @quality < 0
     @quality = 50 if @quality > 50
   end

   def update_sell_in
       @sell_in -= 1
   end
   

end
