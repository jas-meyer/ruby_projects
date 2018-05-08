class SessionsController < ApplicationController
  def new
  
  end
  def create
        # Log User In
        # if authenticate true
            # save user id to session
            # redirect to users profile page
        # if authenticate false
            # add an error message -> flash[:errors] = ["Invalid"]
            # redirect to login page
  end
  def destroy
       
         session.delete(:user_id)
         redirect_to '/sessions/new'
        
   end
end
