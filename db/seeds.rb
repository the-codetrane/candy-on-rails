# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  address = FactoryBot.create(:address)
  order = FactoryBot.create(:order, address: address)
  3.times do
    package = %w(bag gift_box rail_car).sample
    model = FactoryBot.create(package.to_sym, order: order)
    5.times { FactoryBot.create(:candy, package: model) }
  end
end