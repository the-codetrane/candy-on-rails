FactoryBot.define do
  factory :order do
    address nil
    name Faker::Name.name
  end
end
