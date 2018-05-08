require_relative 'human'
require_relative 'samurai'
require_relative 'wizard'
class Ninja < Human
	def initialize
	super
	@stealth += 172
	end

	def steal(obj)
		if obj.class.ancestors.include?(Human)
			@health += 10
			puts "Ninja has used steal and gained 10 health and has a total of #{@health}"
			true
		else
			false
		end
		self
	end
	def get_away
		@health -=15
		puts "Ninja has used get away and lost 15 health and has a total of #{@health}"
		self
	end
end