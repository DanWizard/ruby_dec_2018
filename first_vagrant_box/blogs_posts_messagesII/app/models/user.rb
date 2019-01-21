class User < ActiveRecord::Base
	 has_and_belongs_to_many :blogs
	 has_many :posts
	 has_many :messages
end
