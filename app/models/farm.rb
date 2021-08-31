class Farm < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :farm_categories
  has_many :farm_categories
  has_many :products
  validates :name, presence: true
  validates :location, presence: true
end
