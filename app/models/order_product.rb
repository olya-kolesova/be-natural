class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :quantity, numericality: { in: 1..5 }
end
