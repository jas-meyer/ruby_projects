require_relative 'human'
require_relative 'samurai'
require_relative 'ninja'

class Wizard < Human

	def initialize
		super
		@health -= 50
		@intelligence += 22
	end

	def heal
		@health += 10
		puts "Wizard has healed itself by 10 to a total #{@health}"
		self
	end

	def fireball(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
			puts "Wizard used the fireball which did 20 damage the opponent has #{obj.health} left"
			true
		else
			false
		end
		self
	end
end

wizard1 = Wizard.new
ninja2 = Ninja.new.steal(wizard1)