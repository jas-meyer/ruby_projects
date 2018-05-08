class SessionsController < ApplicationController
  skip_before_action :require_login
  def new

  end
  def create
      email = params[:user][:email]
    password = params[:user][:password]
    @user = User.find_by_email(email)
    if @user != nil  
      if (@user.authenticate(password))
        session[:user_id] = @user.id
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
  def destroy
       
          session.delete(:user_id)
          redirect_to '/sessions/new'
        
   end
end
