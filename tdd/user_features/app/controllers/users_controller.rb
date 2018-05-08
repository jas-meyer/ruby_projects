 class UsersController < ApplicationController
  skip_before_action :require_login, except: [:show,:edit,:update,:destroy]
  before_action :check_session, except: [:new, :create]
  def new
  end
  def create
    @user = User.new(user_params)
  	@user.save
    if @user.save
      session[:user_id] = @user.id
  		redirect_to '/sessions/new'
      return
  	elsif @user.save == false
    flash[:error] = @user.errors.full_messages
      redirect_to '/users/new'
      return
    end
    redirect_to '/sessions/new'
    return
  end
 
  def show
    @user = User.find(session[:user_id])
    @secrets = Secret.all
  end

  def edit
     @user = User.find(session[:user_id])
  end
  def update
    @user = User.find(session[:user_id])
    user_id = session[:user_id]
    r = @user.update(update_user_params)
    p @user.id
    if r
      redirect_to "/users/#{@user.id}"
      return
    elsif r == false
    flash[:error] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
      return
    end
    redirect_to "/users/#{@user.id}/edit"
    return
  end
  def destroy
      @user = User.find(session[:user_id])
      @user.destroy
      session.delete(:user_id)

      redirect_to "/users/new"
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
    def update_user_params
      params.require(:user).permit(:name, :email)
    end
    def check_session
      id = params[:id].to_i 
      if session[:user_id] != id 
        user_id = session[:user_id]
        redirect_to "/users/#{user_id}"
      end  
    end
end
