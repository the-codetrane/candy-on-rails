FactoryBot.define do
  factory :candy do
    name { Faker::Dessert.flavor + %w(Model Controller View Concern Gem Mailer Channel).sample }
    type { %w(Cake Cookie Pie Hard-candy Toffee Taffy).sample }
    chef_name { "#{Faker::LeagueOfLegends.location} #{Faker::LeagueOfLegends.summoner_spell}"}
    contributor { %w(DHH Aaron\ Patterson Eileen\ Uchitelle Sean\ Griffin).sample }
  end
end
