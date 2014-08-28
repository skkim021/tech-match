class ProfilesController < ApplicationController

	def index
    	# @profiles = Profile.all
    	if signed_in?
    		@response = HTTParty.get "http://tech-profiles.herokuapp.com/profiles.json"
		else
			render 'users/first'
		end
	end

	def show
		if signed_in?
  			@profile = Profile.first.search(params[:name])
  		else
  			render 'users/first'
  		end
	end

end
