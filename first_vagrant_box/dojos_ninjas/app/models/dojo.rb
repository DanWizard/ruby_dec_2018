class Dojo < ActiveRecord::Base
	has_many :ninjas, dependant: :destroy
	validates :name, :city, :state, presence: true, length: { in: 2..20 }
end
