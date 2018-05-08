class Friendship < ActiveRecord::Base
  belongs_to :friend_to, foreign_key: "user_id", class_name: "User"
  belongs_to :friend_of, foreign_key: "friend_id", class_name: "User"
end
