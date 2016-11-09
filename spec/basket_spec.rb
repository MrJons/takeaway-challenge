require "basket"

describe Basket do

  subject(:basket) {described_class.new}

  it "should start with empty basket" do
    expect(basket.current_basket).to eq({})
  end

  it "can add items to basket hash" do
    basket.add_to_cart("Olives")
    expect(basket.current_basket).to include({:Olives=>2.99})
  end

  it "returns error where selected dish is not valid" do
    expect{subject.add_to_cart(:potato)}.to raise_error "Item not on menu"
  end

  it "basket contents can be viewed" do
    basket.add_to_cart("Olives")
    expect{basket.basket_status}.to output("Olives: £2.99\nTotal: £2.99\n").to_stdout
  end

end
