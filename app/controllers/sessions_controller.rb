class SessionsController < ApplicationController

  def new
    if signed_in?
      redirect_to current_user
    end
  end

  def create
    # user = User.find_by(email: params[:session][:email].downcase)
    # if user && user.authenticate(params[:session][:password])
    #   sign_in user
    #   redirect_to user  
    # else
    #   # flash.now[:error] = 'Invalid email/password combination'
    #   render 'new'
    # # /////////////// FACEBOOK ////////////////////////////////////////////
    # end
  
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to user
  end
     # /////////////////////////////////////////////////////////////////////
  

  def destroy
    sign_out
    redirect_to sign_in_path
  
    # /////////////// FACEBOOK ////////////////////////////////////////////
    session[:user_id] = nil
    redirect_to root_url
  end


end
