class Category < ApplicationRecord
  validates :name, presence: true
  has_many :products, :farm_categories
end
