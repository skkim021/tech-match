class Job < ActiveRecord::Base
BASE_URI = "http://service.dice.com/api/rest/jobsearch/v1/simple.json?text="

	def index
		uri = BASE_URI + "manager"
		@response = HTTParty.get uri
		return @response
	end

	def search
		uri = BASE_URI + "java"
		@response = HTTParty.get uri
		return @response
	end

end
