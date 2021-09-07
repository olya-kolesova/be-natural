class Product < ApplicationRecord
  belongs_to :farm
  belongs_to :category
  has_many :order_products
  has_one_attached :photo
  validates :name, presence: true
  validates :price, presence: true
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :category_id ],
    associated_against: {
      category: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
