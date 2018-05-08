class SecretsController < ApplicationController
  def index
  @secrets = Secret.all
  @likes = Like.all
  @user = User.find(session[:user_id])
  
  end
  def create
    @secret = Secret.new(secret_params)
  	@secret.save
  	user_id = session[:user_id]
  		redirect_to "/users/#{user_id}"
   end
 def destroy
 	@secret = Secret.find(params[:id])
 	user_id = session[:user_id]
 	if @secret.user_id != session[:user_id] 
 		redirect_to "/users/#{user_id}"
 	else
 		@secret.destroy
  		redirect_to "/users/#{user_id}"
  	end
   end
private
    def secret_params
      params.require(:secret).permit(:content, :user_id)
    end

end
