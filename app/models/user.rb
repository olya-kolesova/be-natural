class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :farms
  has_many :orders
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  after_create :order_create

  def order_create
    Order.create(user: self)
  end
end
