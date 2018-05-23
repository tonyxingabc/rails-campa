class Van < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy

  validates :description, presence: true
end
