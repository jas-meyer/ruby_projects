class StudentsController < ApplicationController
	def index
		@dojo = Dojo.find(params[:dojo_id])
		dojo_id = params[:dojo_id]
		@students = Student.where("dojo_id = #{dojo_id}")
	end
	def new
		@dojo = Dojo.find(params[:dojo_id])
		@dojos = Dojo.all
	end
	def create
		@dojo = Dojo.find(params[:dojo_id])
		
		@student = Student.new(student_params)
		valid = @student.valid?
		dojo_id = params[:dojo_id]
		if valid == true
			flash[:success] = "Great Success! WAWA We WA"
			@student = Student.create(student_params)
			redirect_to "/dojos/#{dojo_id}"
		else
			flash[:error]= @student.errors.full_messages
			p flash[:error]
			redirect_to "/dojos/#{dojo_id}/students/new"
		end
	end
	def show
		@dojo = Dojo.find(params[:dojo_id])
		@student = Student.find(params[:id])
		student_id = params[:id]
		dojo_id = params[:dojo_id]
		@students = Student.where("dojo_id = #{dojo_id}").where.not("id = #{student_id}")

	end
	
	def edit
	@dojos = Dojo.all
	@dojo = Dojo.find(params[:dojo_id])
	@student = Student.find(params[:id])

	end

	def update
		dojo_id = params[:dojo_id]
		@student = Student.find(params[:id])
    	@student.update(student_params)
		redirect_to "/dojos/#{dojo_id}"

	end
	
	def destroy
		@dojo = Dojo.find(params[:id])
		dojo_id = params[:dojo_id]
		@dojo.destroy
		redirect_to "/dojos/#{dojo_id}"
	end
	private
		def student_params
			params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
		end
end
