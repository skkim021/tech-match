class TestsController < ApplicationController

	def index
		if signed_in?
			fill_if_empty
			@test = Test.first
		else
      		render 'users/first'
    	end
	end

	def update
		if signed_in?
			fill_if_empty
			@test = Test.first

			if @test.update_attributes(test_params)
				# Calculate result based on answers.
				# @test.calc_result
				
				# Save result to current user.
				if fb_signin?
					user = current_userf
				else
					user = current_user
				end
				user["result"] = @test.result
				user.save

				# View Test Result
				redirect_to profile_path(@test.result)
			else
				redirect_to 'index'
			end
		else
      		render 'users/first'
    	end
	end

	private
		def test_params
			params.require(:test).permit(:result)
		end

		def fill_if_empty
			if Test.first.nil?
				Test.create()
			end
		end
end
