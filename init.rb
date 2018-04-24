require_relative "app/store_application"

StoreApplication.config do |app|
  app.name = 'My Store'
  app.environment = :production

  app.admin do |admin|
    admin.email = 'sergey1shimko@gmail.com'
    admin.login = 'admin'
    admin.send_info_emails_on :mondays
  end
end

unless StoreApplication.frozen?
  StoreApplication.name = "13213"
end


@items = []
@items << AntiqueItem.new('car', price: 101, weight: 99)
@items << RealItem.new(:price => 101, :weight => 99, :name => "kettle")
@items << RealItem.new(:price => 100, :weight => 99, :name => "dishwasher")

cart = Cart.new("roman")
cart.add_item RealItem.new({:price => 101, :weight => 922, :name => "car"})
cart.add_item RealItem.new(:price => 101, :weight => 150, :name => "kettle")
cart.add_item RealItem.new(:price => 101, :weight => 99, :name => "kettle")

# puts @items[0].kind_of?(Item) # is object is instanse of Item class with inheritance
# puts @items[0].class == AntiqueItem # is instance of exact class
# puts @items[0].class == Item
# puts @items[0].respond_to?(:info) # symbol as method name in class
# puts @items[0].send(:price)
# puts @items[0].price # same as above
#
# method = 'all_cars'
# puts cart.send(method) # with -send- can call method as string

# order = Order.new
# @items.each { |i| order.add_item(i) }
# order.place

order = Order.new
order.place
p order.placed_at.strftime('%b %-d, %Y %H:%M:%S')
