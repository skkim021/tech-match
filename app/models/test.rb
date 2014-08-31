class Test < ActiveRecord::Base

	def calc_result
		update_attributes(result: "Software Engineer")
	end

end
