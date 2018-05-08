a = {first_name: "Jason", last_name:"Meyer"}
b =  {}

a.delete(:last_name)

puts a
puts a.empty?
puts b.empty?
puts a.has_key?(:first_name)
puts a.has_key?(:middle_name)

puts a.has_value?("Jason")
puts a.has_value?("Anthony")