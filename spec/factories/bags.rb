FactoryBot.define do
  factory :bag do
    order
    shipping_type { %w[ground air next-day-air].sample }
  end
end
