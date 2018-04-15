FactoryBot.define do
  factory :gift_box do
    order
    shipping_type { %w[ground air next-day-air].sample }
  end
end
