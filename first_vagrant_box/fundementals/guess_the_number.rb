def guess_number guess
    number = 25
    if guess == number
    	p "You got it"
    end
    if guess > number
    	p "Too high"
    end
    if guess < number 
    	p "Too low"
    end
end 

arr1 = [1,7,3,4]
arr2 = [5,9,7,8]

 p arr1.sort

 p arr1.include?(3)

 p arr1.last

 p "max: "+arr1.max.to_s

 p "min: "+arr1.min.to_s

  


