module Aged_brie
  def self.update(item)
    item.quality += 1 if item.quality < 50
    item.quality += 1 if item.quality < 50 && item.sell_in <= 0
    item.sell_in -= 1
  end
end
