module Normal_item

  def self.update(item)
    item.quality -= 1 if item.quality > 0
    item.quality -= 1 if item.sell_in <= 0 && item.quality > 0
    item.sell_in -= 1
  end

end
