class Relationship < ApplicationRecord
  belongs_to :followed, class_name: 'User'#, foreign_key: "followed_id", dependent: :destroy
  belongs_to :follower, class_name: 'User'#, foreign_key: "followed_id", dependent: :destroy
  
end