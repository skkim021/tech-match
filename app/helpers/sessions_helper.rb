module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end

  def signed_in_user
    unless signed_in?
      redirect_to signin_url
    end
  end

  def signed_in?
    !current_user.nil? || !current_userf.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
  
  def current_user?(user)
    user == current_user
  end

  # ///// Facebook ////
  def current_userf
    @current_userf ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_userf?(user)
    user == current_userf
  end

  def fb_signin?
    !current_userf.nil?
  end

  def sign_out
    if fb_signin?
      redirect_to signout_path
    else
      current_user.update_attribute(:remember_token,
                                    User.digest(User.new_remember_token))
      cookies.delete(:remember_token)
      self.current_user = nil
      redirect_to first_path
    end
  end
end
