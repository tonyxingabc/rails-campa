class Van < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
