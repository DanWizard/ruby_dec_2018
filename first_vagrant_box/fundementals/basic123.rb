def to255
	1.upto(255) {|i| print i, " "}
end

def oddIn255
	p (1..255).select {|a| a%2 != 0}
end

def countAndSum
	sum = 0 
	a = 1.upto(255) do |i|
		sum += i
		p "count: #{i} sum: #{sum}", " " 
	end
end

def eachElement arr
	arr.each {|e| print e, " "}
end

def maxElement arr
	p arr.max
end

def avgElement arr
	sum = 0 
	arr.each { |e| sum+=e }
	p sum.to_f/arr.length.to_f
end

def greaterThan arr, y
	sumOfGreater = 0
	arr.each do |e|
		if e > y 
		 	sumOfGreater+=1
		end 
	end
	p sumOfGreater
end

def squareValues arr
	a = []
	arr.each do |e| 
		e*=e
		a<<e
	end
	p a
end

def removeNeg arr
	arr.each_index do |e|
		if arr[e] < 0 
			arr[e] = 0
		end	
	end
	p arr
end

def maxMinAndAverage arr
	sum = 0
	arr.each { |e| sum+=e }
	p "max: #{arr.max} min: #{arr.min} average: #{sum.to_f/arr.length.to_f}"
end

def shiftToFront arr
	arr[arr.length] = 0
	arr.delete_at(0)
	p arr
end

def changeNeg arr
	arr.each_index do |e|
		if arr[e] < 0 
			arr[e] = "dojo"
		end	
	end
	p arr
end
changeNeg [-1,-2,1,1,1]