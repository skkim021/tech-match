class UsersController < ApplicationController
before_action :find_user, only: [:show, :edit, :update, :destroy]
before_action :signed_in_user, only: [:index, :show, :edit, :update, :destroy]
before_action :correct_user, only: [:show, :edit, :update, :destroy, :index]

def first
	if signed_in?
		redirect_to new_session_path
	end
end

def index
	@users = User.all
end

def show
end 

def new
	if current_user
		redirect_to current_user
	else 
		@user = User.new
	end
end

def create
	@user = User.new(user_params)
	UserMailer.welcome_email(@user.email).deliver
		
	  if @user.save
	    sign_in @user
	    redirect_to @user
	  else
	     render :new 
	  end
end

def edit
	@user = User.find(params[:id])
end

def update
	if @user.update_attributes(user_params)
		redirect_to @user
	else
		render 'edit'
	end
end

def destroy
	if @user.destroy
		render 'users/first'
	else
		render 'show'
	end
end


private
  	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
		
	def find_user
		@user = User.find(params[:id])
	end

	def correct_user
		find_user
		if fb_signin?
			redirect_to(current_userf) unless current_userf?(@user)
		else
			redirect_to(current_user) unless current_user?(@user)
		end
	end
end
