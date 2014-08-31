class TestsController < ApplicationController

	def index
		if signed_in?
			@tests = Test.all
		else
      		render 'users/first'
    	end
	end

	def show
		if signed_in?
			@test = Test.find(params[:id])
		else
      		render 'users/first'
    	end
	end

	def new
		if signed_in?
			@test = User.new
		else
      		render 'users/first'
    	end
	end

	def create
		if signed_in?
			@test = Test.new(test_params)
			if @test.save
				redirect_to @test
			else
				render :new
			end
		else
      		render 'users/first'
    	end

	end

	def edit
		if signed_in?

		else
      		render 'users/first'
    	end
	end

	def update
		if signed_in?

		else
      		render 'users/first'
    	end
	end

	def destroy
		if signed_in?

		else
      		render 'users/first'
    	end
	end

end
