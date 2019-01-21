require_relative "human"
class Samauria < Human
	amt = 0
	def initialize
		super
		@health = 200
		@amt += 1
	end
	def death_blow obj
		obj.health = 0
		self
	end
	def meditate
		@health = 200
		self
	end
end
