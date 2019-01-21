require_relative "human"
class Wizard < Human
	amt = 0
	def initialize
		super
		@health = 200
		@inteligence = 25
		@amt += 1
	end
	def heal
		@health += 10
		self
	end
	def fire_ball obj 
		@health -= 20
		self
end