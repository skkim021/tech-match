class ProfilesController < ApplicationController

	def index
    	# @profiles = Profile.all
    	@response = HTTParty.get "http://tech-profiles.herokuapp.com/profiles.json"
	end

end
