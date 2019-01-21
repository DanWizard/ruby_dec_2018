class User < ActiveRecord::Base
	has_many :friendships
	has_many :friends, through: :friendships, source: :friend
	has_many :buddy, foreign_key: :friend_id, class_name: "Friendship"
	has_many :pal, through: :buddy, source: :user 
end
