class Farm < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :farm_categories
  has_many :farm_categories
  has_many :products, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :location, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
