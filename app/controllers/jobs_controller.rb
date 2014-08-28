class JobsController < ApplicationController

  def index
    if signed_in?
      # @jobs = Job.all
      @job = Job.new
      @jobs = Job.first.adv_search(params[:title],params[:state],params[:zip])
      @path = job_path(params)
      @title = params[:title]
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

  def show

  end

  def create
    if signed_in?
      @job = Job.new(job_params)

      if @job.save
        @jobs = Job.all
        # redirect_to jobs_path
        redirect_to job_path(job_params)
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
