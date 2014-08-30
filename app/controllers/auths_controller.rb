class AuthsController < ApplicationController
  	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to first_path
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to first_path
	end
end
