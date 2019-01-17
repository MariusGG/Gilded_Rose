require 'legendary'

describe Legendary do
  let(:sulfuras) { Legendary.new }

  context 'when item is Sulfuras, Hand of Ragnaros' do
    it 'does not change sell_in' do
      sulfuras = Legendary.new("Sulfuras, Hand of Ragnaros", 1, 80)
      sulfuras.update_item
      expect(sulfuras.sell_in).to eq(1)
    end

    it 'does not change quality' do
      sulfuras = Legendary.new("Sulfuras, Hand of Ragnaros", 1, 80)
      sulfuras.update_item
      expect(sulfuras.quality).to eq(80)
    end
  end
end
