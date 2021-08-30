class Product < ApplicationRecord
  belongs_to :farm
  belongs_to :category
  validates :name, presence: true
  validates :price, presence: true
end
