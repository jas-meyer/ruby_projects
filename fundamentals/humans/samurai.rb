require_relative 'human'
require_relative 'wizard'
require_relative 'ninja'

class Samurai < Human
	@@numofsam = 0
	def initialize
		super
		@health += 100
		@@numofsam += 1
	end

	def death_blow(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= obj.health
			puts "The samurai totally killed that dude"
			true
		else
			false
		end
		self
	end
	def meditate
		@health = 200
		puts "The samurai has regained of their health"
		self
	end
	def how_many
		puts "There are #{@@numofsam} samurai"
		self
	end
end

ninja1 = Ninja.new.get_away
samurai1 = Samurai.new.death_blow(ninja1) 

samurai3 = Samurai.new.how_many
