require 'main'

describe Main do

  let(:user) {described_class.new}
  # let(:show_menu) {double :show_menu}
  # let(:basket) {double :basket, :add_to_cart}
  # let(:view_basket) {double :view_basket, current_basket: {:Olives=>2.99}}
  # let(:select_dish) {double :select_dish, current_basket: {:Olives=>2.99}}
  let(:basket) {class_double(Basket)}
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

    let(:basket) {double('Basket', :add_to_cart => nil)}
    it "selected dish is " do
      # basket = instance_double("Basket")

      user.select_dish("Olives")

      expect(basket).to receive(:add_to_cart).with("Olives")

      # allow_any_instance_of(basket).to receive(:add_to_cart).with("Olives")
    end
  end

  # it "recognises ability to view basket" do
  #   expect(user).to respond_to(:view_basket)
  # end
  #
  # it "recognises ability to place order" do
  #   expect(user).to respond_to(:place_order)
  # end

end
