FactoryBot.define do
  factory :rail_car do
    order
    shipping_type { %w[ground air next-day-air].sample }
  end
end
