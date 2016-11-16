class Nest < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :wishes

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
