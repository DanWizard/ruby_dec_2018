def sumAndGreaterThan10 arr
	newArr = []
	sum = 0 
	arr.each do |e| 
		sum+=e
		if e > 10
		newArr << e 
	end
	end
	p "sum: #{sum} >10: #{newArr}"
end

def shuffleAndCount arr
	newArr = []
	arr.shuffle
	arr.each do |e|
		p e
		if e.length > 5
			newArr << e
		end
	end
	p newArr
end

def alphabet arr
	arr.shuffle
	p arr[arr.length-1]
	p arr[0]
	if arr[0] == 'a' || arr[0] == 'e' || arr[0] == 'i' || arr[0] == 'o' || arr[0] == 'u'
		p "first letter is a vowel"
	end
end

def ranNum
	i = 0
	loop do
	  p rand(55..100)
	  i += 1
	  if i == 10
	    break 
	  end
	end 	
end

def arrayNStuff
	i = 0
	newArr = []
	loop do
	  a = rand(55..100)
	  newArr << a
	  i += 1
	  if i == 10
	    break      
	  end
	end
	p newArr.sort
	p newArr.max
	p newArr.min
end 

def stringNStuff
	i = 0
	newStr = ''
	loop do
	  a = (65+rand(26)).chr
	  newStr << a
	  i += 1
	  if i == 5
	    break      
	  end
	end
	p newStr
end 

def moreStringNStuff
	i = 0
	newArr = []
	loop do
	  newStr = ''
	  e = 0
	  loop do
		a = (65+rand(26)).chr
	  	newStr << a
	  	e += 1
	  if e == 5
	  	newArr << newStr
	    break      
	  end
	  end
	  i += 1
	  if i == 10
	  	break
	  end	
	end
	p newArr
end

moreStringNStuff