class Show
	attr_accessor :title, :channel, :type
	def initialize(title, channel, type) 
		@title = title
		@channel = channel
		@type = type
	end
	def announce
		puts "This is the best #{@type} show ever! #{@title} on #{@channel}"
	end
end


class Actor < Show
	attr_accessor :name, :iq, :occupation, :special_ability, :show
	def initialize(name, iq, occupation, special_ability, show)
		@name = name
		@iq = iq
		@occupation = occupation
		@special_ability = special_ability 
		@show = show
	end
	def greeting
		puts "This is #{@name}, I work as a #{@occupation}. My talent is #{@special_ability}. My intelligence stat #{@iq}"
	end
	def whatimon
		puts "I'm #{@name}. I'm on #{@show.title}"
		@show.announce
	end
end


show1 = Show.new("Jersey Shore","MTV","Psuedo-Reality")

actor1 = Actor.new("Snooky",69,"gremlin","I can take a punch",show1)
actor2 = Actor.new("JWOW", 42,"Scientist","I exist", show1)

show1.announce
actor1.whatimon
actor2.greeting
actor2.whatimon