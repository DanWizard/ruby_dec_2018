a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

def printNames stuff
	p "you have #{stuff.length} in 	array 'stuff' "
	stuff.each {|e| p "the name is #{e[:first_name]} #{e[:last_name]}"} 
end

printNames names