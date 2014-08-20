class UsersController < ApplicationController

def index
	@users = User.all
end

def new
	@user = User.new
end

def create
	@user = User.new 
	respond_to do |format|
	      if @user.save
	        sign_in @user
	        format.html { redirect_to @user, notice: 'User was successfully created.' }
	        format.json { render :show, status: :created, location: @user }
	      else
	        format.html { render :new }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
    	end
	end

def show
end 

def edit
end

	def update
		respond_to do |format|
	      if @user.update(user_params)
	        format.html { redirect_to @user, notice: 'User was successfully updated.' }
	        format.json { render :show, status: :ok, location: @user }
	      else
	        format.html { render :edit }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
    	end
	end

	def destroy
		@user.destroy
    	respond_to do |format|
      	format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      	format.json { head :no_content }
  		end
	end

private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end

    def sign_in(user)
    	remember_token = User.new_remember_token
    	cookies.permanent[:remember_token]= remember_token 
    	user.update_attribute(:remember_token, User.digest(remember_token))
    end
end

