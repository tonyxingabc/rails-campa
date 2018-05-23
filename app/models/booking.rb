class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  validates :user, uniqueness: { scope: :van }
end
