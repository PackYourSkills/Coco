class Nest < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :wishes
  has_many :timeslots

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
