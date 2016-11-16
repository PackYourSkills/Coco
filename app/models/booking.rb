class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :nest
end
