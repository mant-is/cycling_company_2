class Comment < ApplicationRecord
  belongs_to :ride
  belongs_to :commenter, class_name: :User, foreign_key: :user_id
end
