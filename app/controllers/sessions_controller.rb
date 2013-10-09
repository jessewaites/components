class SessionsController < ApplicationController
  def create
   user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id 
   redirect_to root_url, notice: "You are now signed in."
  end 
end		