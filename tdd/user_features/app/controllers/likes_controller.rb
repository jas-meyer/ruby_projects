class LikesController < ApplicationController
  def create
  like = Like.new
  like.user_id = session[:user_id]
  like.secret_id = params[:id]
  like.save
  redirect_to "/secrets/"
  end

  def destroy
  like = Like.where('secret_id': params[:id], 'user_id': session[:user_id]).first
  like.destroy
  redirect_to "/secrets/"
  end
end
