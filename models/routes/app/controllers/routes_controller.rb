class RoutesController < ApplicationController
	def index
		render text: "Hello CodingDojo!"
	end
	def hello
		render text: "Saying Hello!"
	end
	def joe
		render text: "Saying Hello Joe!"
	end
	def name
		redirect_to "/say/hello/joe"
	end
	def time
		if session[:count]
		else
			session[:count] = 0
		end
		session[:count] += 1;
		count = session[:count]
		render text: "You visited this url #{count} time"
	end
	def restart
		session[:count] = nil
		render text: "Destroyed the session!"
	end
	def
end
