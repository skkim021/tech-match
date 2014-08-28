class Job < ActiveRecord::Base
attr_accessor :title, :uri, :response
BASE_URI = "http://service.dice.com/api/rest/jobsearch/v1/simple.json?text="

	def search_title
		uri = BASE_URI + search
		@response = HTTParty.get uri
		# @response = search
		return @response
	end

end
