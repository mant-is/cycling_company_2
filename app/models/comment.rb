class Comment < ApplicationRecord
  belongs_to :ride
  belongs_to :commenter, class_name: :User, foreign_key: :user_id
  #validates :user_id, :ride_id, presence: true
end
