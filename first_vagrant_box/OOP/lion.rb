require_relative "mammal"
class Lion < Mammal
	def initialize
		super
		@health = 170
	end
	def fly
		@health -= 10
		self 
	end
	def attack_town
		@health -= 50
		self
	end
	def eat_humans
		@health += 20
		self
	end
	def displayHealth
		p "it is a lion"
		display_health
	end
end

tony = Lion.new

tony.fly.attack_town.eat_humans.fly.fly.fly.fly.displayHealth