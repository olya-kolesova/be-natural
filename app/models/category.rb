class Category < ApplicationRecord
  validates :name, presence: true
  has_many :products
  has_many :farm_categories
end
