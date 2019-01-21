class User < ActiveRecord::Base
	has_many :messages
	has_many :owners
	has_many :posts
	has_many :p_blogs, through: :posts, source: :blog
	has_many :o_blogs, through: :owners, source: :blog
	has_many :m_posts, through: :messages, source: :post

end
