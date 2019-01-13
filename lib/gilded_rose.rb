# frozen_string_literal: true
require_relative 'aged_brie'
require_relative 'backstage_pass'
require_relative 'sulfuras'
require_relative 'normal_item'

class GildedRose

  include Aged_brie, Backstage_pass, Sulfuras, Normal_item

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      if item.name == 'Aged Brie'
        Aged_brie.update(item)
      elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
        Backstage_pass.update(item)
      elsif item.name == 'Sulfuras, Hand of Ragnaros'
        Sulfuras.update(item)
      elsif item.name == 'Conjured'
        conjured(item)
      else
        Normal_item.update(item)
      end
    end
  end

end
