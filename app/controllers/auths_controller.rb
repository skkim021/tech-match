class AuthsController < ApplicationController
  	def create
  		if signed_in?
  			# Print error message: already signed in
  			redirect_to first_path
  		else
			user = User.from_omniauth(env["omniauth.auth"])
			session[:user_id] = user.id
			UserMailer.welcome_email(user.email).deliver
			redirect_to new_session_path
		end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to first_path
	end
end
