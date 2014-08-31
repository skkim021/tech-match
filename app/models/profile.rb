class Profile < ActiveRecord::Base
BASE_URI = "http://tech-profiles.herokuapp.com/profiles/"
END_URI = ".json"

	def search name
		uri = BASE_URI + name.gsub(' ','+').gsub('/','%2F') + END_URI
		@response = HTTParty.get uri
		return @response
	end

end
