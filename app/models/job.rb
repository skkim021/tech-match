class Job < ActiveRecord::Base
BASE_URI = "http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=manager"

	def initialize
		@response = HTTParty.get BASE_URI
	end

	def search_profile
		return @response
	end

end
