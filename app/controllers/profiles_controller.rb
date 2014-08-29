class ProfilesController < ApplicationController

	def index
    	# @profiles = Profile.all
    	fill_if_empty
    	if signed_in?
    		@response = HTTParty.get "http://tech-profiles.herokuapp.com/profiles.json"
		else
			render 'users/first'
		end
	end

	def show
		fill_if_empty
		if signed_in?
  			@profile = Profile.first.search(params[:name])
  		else
  			render 'users/first'
  		end
	end

	private
		def fill_if_empty
			if Profile.first.nil?
				Profile.create
			end
		end
end
