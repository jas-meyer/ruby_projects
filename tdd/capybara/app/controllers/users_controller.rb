class UsersController < ApplicationController
  def new
  end
  def create
  @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
   
  if @user.save
    flash[:notice] = ['Welcome, shane']
    redirect_to ('/users/1')
  else
    flash[:error] = @user.errors.full_messages
    redirect_to ('/users/new')
  end
  end
  def show

  end
end
