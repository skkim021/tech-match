class SessionsController < ApplicationController

  def new
    if signed_in?
      if current_user
        redirect_to current_user
      else
        redirect_to current_userf
      end
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user  
    else
      # flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    # render 'users/first'
  end
end

