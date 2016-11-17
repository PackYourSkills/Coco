class Timeslot < ApplicationRecord
  belongs_to :nest
  validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 0 }

end
