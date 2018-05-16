
require 'faker'


10.times do
  p "start"
  p title = Faker::Book.title
  restaurant = Restaurant.create(name: title, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone.to_s, category: "chinese")
  p "end"
end
