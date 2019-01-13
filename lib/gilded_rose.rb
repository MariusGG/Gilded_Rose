class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
      if item.name == "Aged Brie"
        aged_brie(item)
      elsif item.name == "Backstage passes to a TAFKAL80ETC concert"
        backstage_passes(item)
      elsif item.name == "Sulfuras, Hand of Ragnaros"
        sulfuras(item)
      elsif item.name == "Conjured"
        conjured(item)
      else
        normal_item(item)
      end
    end
  end

  def normal_item(item)
    if item.quality == 0
      item.sell_in = item.sell_in - 1
    else item.quality < 50
      item.quality = item.quality - 1
      item.sell_in = item.sell_in - 1
      if item.sell_in <= 0
        item.quality = 0
      end
    end
  end
  def aged_brie(item)
    if item.sell_in > 0
      item.quality +=  1
    else
      item.quality += 2
    end

    item.sell_in -= 1
    if item.quality > 50
      item.quality = 50
    end
  end
  #this seems to pass(2)test even though its empty
  def sulfuras(item)
  end

  def backstage_passes(item)

      item.quality += 1 if item.sell_in < 11
      item.quality += 1 if item.sell_in < 6
      item.quality = 0 if item.sell_in <= 0
      item.quality = 50 if item.quality > 50


  end

end
