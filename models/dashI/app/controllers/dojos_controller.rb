class DojosController < ApplicationController
	def index
		@dojos = Dojo.all
		@count = @dojos.count
	end
	def new

	end
	def create
		@dojo = Dojo.new(dojo_params)
		valid = @dojo.valid?
		if valid == true
			flash[:success] = "Great Success! WAWA We WA"
			@dojo = Dojo.create(dojo_params)
			redirect_to "/dojos"
		else
			flash[:error]= @dojo.errors.full_messages
			p flash[:error]
			redirect_to "/dojos/new"
		end
	end
	def show
		@dojo = Dojo.find(params[:id])
	end
	
	def edit
	@dojo = Dojo.find(params[:id])

	end

	def update
		@dojo = Dojo.find(params[:id])
    	@dojo.update(dojo_params)
		redirect_to "/dojos"

	end
	
	def destroy
		@dojo = Dojo.find(params[:id])
		@dojo.destroy
		redirect_to "/dojos"
	end
	private
		def dojo_params
			params.require(:dojo).permit(:branch, :street, :city, :state)
		end
end
