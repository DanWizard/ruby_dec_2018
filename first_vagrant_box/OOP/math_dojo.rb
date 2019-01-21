class Math_Dojo
	attr_accessor :num
	def initialize 
		@num = 0
	end
	def subtract *args
		args.each do |i| 
			if i.class == Array
				i.each {|e| @num += e}
		    else
				@num -= i
		    end
		end
		self
	end
	def add *args
		args.each do |i| 
			if i.class == Array
				i.each {|e| @num += e}
			else
				@num += i
			end
		end
		self
	end
	def show
		p @num
		self
	end
end



math = Math_Dojo.new

math.add(-1,-2,-3,-4,[1,2,3,4,5,6,6,6,6,6,6]).show

