class Ride < ApplicationRecord
  validates :date, :title, :user_id, presence: true
  belongs_to :owner, class_name: :User, foreign_key: :user_id 
  has_many :riders, class_name: :User
end
