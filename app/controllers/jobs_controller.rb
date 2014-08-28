class JobsController < ApplicationController

  def index
    if signed_in?
      # @jobs = Job.all
      @job = Job.new
      @jobs = Job.last.adv_search
    else
      render 'users/first'
    end
  end

  def new
  	if signed_in?
  		@job = Job.new
  	else
  		render 'users/first'
  	end
  end

  def create
    if signed_in?
      @job = Job.new(job_params)

      if @job.save
        @jobs = Job.all
        redirect_to jobs_path
      else
        redirect_to 'new'
      end
    else
      render 'users/first'
    end
  end

  private
    def job_params
      params.require(:job).permit(:title, :state, :zip)
    end
end
