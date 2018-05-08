a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]
l = names.length
puts "You have #{l} in the 'names' array"
def new_names name = {first_name: "", last_name: ""}
	for i in (0...name.length)
	puts "The name is #{name[i][:first_name]} #{name[i][:last_name]}"
	end
end 

new_names names
