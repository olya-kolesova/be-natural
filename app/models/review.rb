class Review < ApplicationRecord
  belongs_to :order
  belongs_to :user
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
