
# for i in 1..255
# 	puts i
# end

# for i in 1..255
# 	if(i%2==1)
# 		puts i
# 	end
# end

# sum = 0
# for i in 0..255
# 	sum += i
# 	puts "New number: #{i} Sum: #{sum}"
# end

# X = [1,3,5,7,9,13]
# for i in (0..X.length-1)
# 	puts X[i]
# end

# arr = [3,234,5,63,24,1,-4,5,-94]
# puts arr.max

# arr = [2,10,3]
# sum = 0
# for i in (0..arr.length-1)
# 	sum = sum + arr[i]
# end
# 	avg = sum / arr.length
# 	 puts "Sum: #{sum}"
# 	 puts "Avg: #{avg}"

# y = []
# for i in 0..255
# 	if(i % 2 == 1)
# 		y.push(i)
# 	end
# end
# puts y

# arr = [1,3,4,6,8,2]
# y = 3
# count = 0
# for i in (0..arr.length-1)
# 	if(arr[i] > y)
# 		count += 1
# 	end
# end
# puts count

# x = [1,5,10,-2]
# for i in 0..x.length-1
# 	temp = x[i] * x[i]
# 	x[i] = temp
# end
# puts x

# x = [1,5,10,-2]
# for i in 0..x.length-1
# 	if x[i] < 0
# 		x[i] = 0
# 	end
# end
# puts x

# x = [1,5.0,10,-2]
# sum = 0 
# avg = 0
# for i in 0..x.length-1
# 	sum += x[i]
# end
# avg = sum / x.length
# max = x.max
# min = x.min 
# puts "The average is #{avg}, the max is #{max} and the min is #{min}"

# x = [1,5,10,7,-2]
# for i in 0..x.length-2
# 	x[i] = x[i+1]
# end 
# x[x.length-1] = 0
# puts x

x = [-1,-3,2]
for i in 0..x.length-1
	if x[i] < 0
		x[i] = 'Dojo'
	end
end
puts x

