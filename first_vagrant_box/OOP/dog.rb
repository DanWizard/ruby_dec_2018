require_relative 'mammal'
class Dog < Mammal
	def displayHealth
		display_health
		self
	end
	def pet
		@health += 5
		self
	end
	def walk
		@health -= 1
		self
	end
	def run
		@health -= 10
		self
	end
end

buddy = Dog.new

buddy.pet.run.displayHealth