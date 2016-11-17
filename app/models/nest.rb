class Nest < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :wishes
  has_many :timeslots

  mount_uploader :photo, PhotoUploader

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end
end
