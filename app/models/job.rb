class Job < ActiveRecord::Base
BASE_URI = "http://service.dice.com/api/rest/jobsearch/v1/simple.json?text="

	def search_title
		uri = BASE_URI + title.gsub(' ','+')
		@response = HTTParty.get uri
		return @response
	end

	def adv_search
		uri = BASE_URI + title.gsub(' ','+') + "&state=" + state.gsub(' ','+') + "&city=" + zip.gsub(' ','+')
		puts uri
		@response = HTTParty.get uri
		return @response
	end
end
