#Understands responsibility to manage inital section of customer journey
require_relative "italian"
require_relative "basket"
require_relative "text"

class Main

  attr_reader :menus, :print_menu, :chosen_menu

  def initialize(text = Text.new, basket = Basket.new)
    @text = text
    @basket = basket
  end

  MENUS = {"Italian" => Italian}

  def menus_available
    MENUS.each{|k,v| puts k}
  end

  def show_menu(type = "Italian")
    (fail "Menu not available" if !MENUS.has_key?(type)) if type != Italian
    MENUS[type.capitalize].new.menu.each.with_index(1) do |(item,price), index|
      puts "#{index}.#{item} --- £#{price}"
    end
  end

  def select_dish(dish)
    @basket.add_to_cart(dish)
  end

  def view_basket
    @basket.basket_status
  end

  def place_order(number)
    @text.send(number)
  end

end
