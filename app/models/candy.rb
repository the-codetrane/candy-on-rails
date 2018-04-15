class Candy < ApplicationRecord
  belongs_to :package, polymorphic: true
end
