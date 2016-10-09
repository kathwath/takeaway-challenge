require 'order'

describe Order do

  order = Order.new


  it "Ensures the current order is empty to start with" do
    expect(order.current_order).to be_empty
  end

  it "Checks that the total order price is 0 to start with" do
    expect(order.total_price).to eq 0
  end

  it "Checks that fries have been added to the current_order" do
    order.add_item("fries",3)
    expect(order.current_order).to include {"fries"}
  end


end