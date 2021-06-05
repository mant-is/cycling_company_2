class Ride < ApplicationRecord
  validates :title, :date, presence: true
end
