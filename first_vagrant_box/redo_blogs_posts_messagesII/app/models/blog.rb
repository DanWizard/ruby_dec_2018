class Blog < ActiveRecord::Base
	has_many :owners
	has_many :posts
	has_many :o_users, through: :posts, source: :user
	has_many :p_users, through: :owners, source: :user
end
