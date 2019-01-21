module MyEnumerable
  def my_each
    p "***"
  	p self 
  	for i in self 
  		yield i

	end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |e| p e } 
[1,2,3,4].my_each { |e| p e * 10 } 