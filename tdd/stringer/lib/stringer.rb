require "stringer/version"

module Stringer
	def self.spacify *strings
        string = ""
        count = 0
        strings.each do |s|
        if count == strings.length-1
        	string += s 
        else    
        	string += s + " "
        	count += 1
        end
   	end
   		string
    end
	def self.minify string, max
  		new_string =""
  		if max > string.length
  		return string 
  		end
  		for i in (0...max)
  			new_string += string[i]
  		end
  		new_string += "..."
		new_string	
	end
	def self.replacify string, replaced, replace
		p string
		arr = string.split(" ")
		p arr
		for i in (0..arr.length)
			if replaced == arr[i]
				arr[i] = replace
			end
		end
		new_string = arr.join(" ")
		p new_string
	end
	def self.tokenize string
		arr = string.split(" ")
	end
	def self.removify string, remove
		p string
		arr = string.split(" ")
		p arr
		for i in (0..arr.length)
			a = []
			if remove == arr[i]
				a.push(arr[i])
				arr -= a 
			end
		end
		new_string = arr.join(" ")
		p new_string
	end

end

# Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza"
# Stringer.replacify "I can't do this", "can't", "can"