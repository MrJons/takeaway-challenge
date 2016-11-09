require "italian"

describe Italian do

  test_menu = {
    :Olives => 2.99,
    :Bruschetta => 3.99,
    :Arancini => 5.99,
    :Margherita => 9.99,
    :Carbonara => 12.99,
    :Pannacotta => 4.99,
    :Tiramisu => 4.99,
    :Wine => 12.99,
    :Coke => 2.49
  }

  it "Knows how to interact with a menu method" do
    expect(subject).to respond_to(:menu)
  end

  it "returns menu when prompted" do
    expect(subject.menu).to eq(test_menu)
  end
end
