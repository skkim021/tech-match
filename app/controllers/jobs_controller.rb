class JobsController < ApplicationController

  def index
    # @jobs = Job.all
    @response = Job.new.index
  end

  def show
    @jobs = Job.last.search
  end

  def new
  	if signed_in?
  		@response = Job.new
  	else
  		render 'users/first'
  	end
  end

  def create
    @response = Job.new(job_params)

    if @response.save
      @jobs = Job.all
      redirect_to job_path
    else
      render :new
    end
  end

  private
    def job_params
      params.require(:job).permit(:search)
    end
end
