require 'item'

class Normal < Item

  def update_item
    update_quality
    update_sell_in
  end

  def update_quality
    @quality -= 1 if @quality > 0
    @quality -= 1 if @sell_in <= 0 && @quality > 0
  end

  def update_sell_in
      @sell_in -= 1
  end

end
