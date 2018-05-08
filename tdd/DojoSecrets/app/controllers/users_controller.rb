class UsersController < ApplicationController
  def new
  end
  def create
  	email = params[:user][:email]
  	password = params[:user][:password]
    @user = User.find_by_email(email)
  	if @user != nil  
  		if (@user.authenticate(password))
  			session[:user_id] = @user.id
  			puts session[:user_id]
  		redirect_to "/users/#{@user.id}"
  		else
  			flash[:error] = ['Invalid Combination']
  			redirect_to '/sessions/new'
  		end
  	else
  		flash[:error] = ['Invalid Combination']
  		redirect_to '/sessions/new'
  	end

  end
 
  def show
  @user = User.find(session[:user_id])
  end

  def edit
  end
end
