class Product < ApplicationRecord
  belongs_to :farm
  belongs_to :category
  has_many :order_products
  has_one_attached :photo
  validates :name, presence: true
  validates :price, presence: true
end
