class Nest < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :wishes
end
