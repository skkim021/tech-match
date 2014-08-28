class JobsController < ApplicationController

  def index
    if signed_in?
      # @jobs = Job.all
      @jobs = Job.last.search_title
    else
      render 'users/first'
    end
  end

  # def show
  #   if signed_in?
  #     # @job = Job.last.search
  #     @job = Job.find(params[:id]).search
  #   else
  #     render 'users/first'
  #   end
  # end

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
        redirect_to 
      else
        redirect_to jobs_path
      end
    else
      render 'users/first'
    end
  end

  private
    def job_params
      params.require(:job).permit(:search)
    end
end
