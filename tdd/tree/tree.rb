class Tree
	attr_accessor :age

	def initialize(age, height, apple_count)
		@age = age
		@height = height
		@apple_count = apple_count
	end
	
	def height
		@height
	end

	def apple_count
		@apple_count
	end

	def year_gone_by
		@age += 1 
		@height = @height + (@height * 0.1)
		if @age > 3 && @age < 11
			@apple_count += 2 
		end
		self
	end

	def pick_apples
		@apple_count = 0
		self
	end

end

@tree2 = Tree.new(5, 30, 6)
puts @tree2.year_gone_by.age