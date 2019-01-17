require 'normal_item'

describe Normal do
let(:normal) { Normal.new }

  context 'when item is generic' do
    context 'before sell_in' do
      it 'lowers quality by one after one day' do
        normal = Normal.new("item", 1, 1)
        normal.update_item
        expect(normal.quality).to eq(0)
      end
    end

    context 'after sell_in' do
      it 'lowers quality by two after a day' do
        normal = Normal.new("item", 0, 2)
        normal.update_item
        expect(normal.quality).to eq(0)
      end
    end
  end
end
