class FarmCategory < ApplicationRecord
  belongs_to :category
  belongs_to :farm
end
