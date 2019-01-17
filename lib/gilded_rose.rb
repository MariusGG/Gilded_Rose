# frozen_string_literal: true
require 'aged_brie'
require 'backstage_pass'
require 'legendary'
require 'normal_item'
require 'conjured'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
     item.update_item
    end
  end

end
