# x = [3,5,1,2,7,9,8,13,25,32]

# def p1 arr
# 	sum = 0
# 	arr2 = []
# 	for i in (0..arr.length-1)
# 		sum += arr[i]
# 		if arr[i] > 10
# 			arr2.push(arr[i])
# 		end
# 	end
# 	puts sum
# 	return arr2
# end

# puts p1 x

# x = ["John","KB","Oliver","Cory","Matthew","Christopher"]
# def fun arr
# 	arr2 = []
# 	arr.shuffle
# 	for i in (0..arr.length-1)
# 		puts arr[i]
# 		if arr[i].length > 5
# 			arr2.push(arr[i])
# 		end 
# 	end

# 	return arr2
# end

# puts "#{fun x}"

# x = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
# x.shuffle!
# puts "The last letter is "+x[25]
# puts x
# if (x[0] == 'a' || x[0] == 'e' || x[0] == 'i' || x[0] == 'o' || x[0] == 'u')
# 	puts "The first letter is a vowel"

# end

# x = []
# for i in (0..9)
# x.push(rand(55...100))
# end
# puts x 

# x = []
# for i in (0..9)
# x.push(rand(55...100))
# end
# puts x 
# x.sort
# puts x
# puts "The min is "+x.min.to_s
# puts "The max is "+x.max.to_s

# y = []
# for i in 0..4
# 	x =(65+rand(26)).chr
# 	y.push(x)
# end
# puts y

y = []

for j in 0..9
	z = ""
	for i in 0..4
	x =(65+rand(26)).chr
	z+=x
	end 
	y.push(z)
end
puts "Array is #{y}"


