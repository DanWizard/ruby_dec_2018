require_relative "human"
class Ninja < Human
	amt = 0
	def initialize
		super
		@stealth = 200
		@amt += 1
	end
	def steal obj
		obj.health -= 10
		@health += 10
		self
	end
	def get_away 
		@health -= 15
		self
end