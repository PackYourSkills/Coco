class Nest < ApplicationRecord
  has_many :bookings
  has_many :wishes
end
