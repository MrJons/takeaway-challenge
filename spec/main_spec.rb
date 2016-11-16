require 'main'

describe Main do

  let(:user) {described_class.new}
  let(:basket) {spy :basket, :add_to_cart => nil, :basket_status => nil}
  let(:text) {spy :text, :send => nil}
  let(:user_with_douled_inputs) {described_class.new(text, basket)}
  let(:italian) {double :italian, menu: {
    :Olives => 2.99,
    :Bruschetta => 3.99,
    :Arancini => 5.99,
    :Margherita => 9.99,
    :Carbonara => 12.99,
    :Pannacotta => 4.99,
    :Tiramisu => 4.99,
    :Wine => 12.99,
    :Coke => 2.49
  }}

  context "#menus_available" do

    it "should print available menus" do
      expect{user.menus_available}.to output("Italian\n").to_stdout
    end
  end

  context "#show_menu" do

    it "should show menu on request" do
      expect(user.show_menu).to eq(italian.menu)
    end

    it "should fail if menu doesnt exist" do
      expect{user.show_menu("Spanish")}.to raise_error "Menu not available"
    end
  end

  context "#select_dish" do

    it "calls add_to_cart method on basket instance" do
      user_with_douled_inputs.select_dish("Olives")
      expect(basket).to have_received(:add_to_cart).with("Olives")
    end
  end

  context "#view_basket" do

    it "calls basket_status method on basket instance" do
      user_with_douled_inputs.view_basket
      expect(basket).to have_received(:basket_status)
    end
  end

  context "#place_order" do
    it "calls send method on text instance" do
      user_with_douled_inputs.place_order(12345)
      expect(text).to have_received(:send).with(12345)
    end
  end
end
