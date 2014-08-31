class JobsController < ApplicationController

  def index
    if signed_in?
      fill_if_empty
      @job = Job.first
      @response = @job.search_index
    else
      render 'users/first'
    end
  end

  def show
    if signed_in?
      fill_if_empty
      @job = Job.first
      @response = @job.adv_search
    else
      render 'users/first'
    end
  end

  def edit
  	if signed_in?
      fill_if_empty
  		@job = Job.first
  	else
  		render 'users/first'
  	end
  end

  def update
    if signed_in?
      fill_if_empty
      @job = Job.first
      puts "update"
      
      if @job.update_attributes(job_params)
        redirect_to show_job_path
      else
        redirect_to 'edit'
      end
    else
      render 'users/first'
    end
  end

  private
    def job_params
      params.require(:job).permit(:title, :state, :zip)
    end

    def fill_if_empty
      if Job.first.nil?
        Job.create(title:"", state:"", zip:"")
      end
    end
end
