class GiftBox < ApplicationRecord
  belongs_to :order
  has_many :candies, as: :package
end
