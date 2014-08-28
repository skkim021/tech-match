class Job < ActiveRecord::Base
BASE_URI = "http://service.dice.com/api/rest/jobsearch/v1/simple.json?"

	def initialize
		return @response = HTTParty.get BASE_URI
	end

	def search_profile
		return @response
	end

end
