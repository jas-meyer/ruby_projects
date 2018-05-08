class User < ActiveRecord::Base
	has_many :friend_to_friendships, foreign_key: :friend_id, class_name: "Friendship"
	has_many :friends_to, through: :friend_to_friendships, source: :friend_to


	has_many :friend_of_friendships, foreign_key: :user_id, class_name: "Friendship"
	has_many :friends_of, through: :friend_of_friendships, source: :friend_of
end
