require 'conjured'

describe Conjured do
  let (:conjured) { Conjured.new }

  context "When Item is Conjured" do
    it "does not change the name" do
      conjured = Conjured.new("foo", 0, 0)
      conjured.update_item
      expect(conjured.name).to eq "foo"
    end

    it "lowers the sell_in by one after a day" do
      conjured = Conjured.new("item", 1, 0)
      conjured.update_item
      expect(conjured.sell_in).to eq 0
    end

    it "never lowers quality below 0" do
      conjured = Conjured.new("item", 0, 0)
      conjured.update_item
      expect(conjured.quality).to eq(0)
    end

    it 'lowers quality by four after a day' do
      conjured = Conjured.new("item", 0, 4)
      conjured.update_item
      expect(conjured.quality).to eq(0)
    end
  end
end
