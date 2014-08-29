class JobsController < ApplicationController

  def index
    fill_if_empty
    if signed_in?
      @job = Job.first
      @response = @job.search_index
    else
      render 'users/first'
    end
  end

  def show
    fill_if_empty
    @job = Job.first
    @response = @job.adv_search
  end

  def edit
    fill_if_empty
  	if signed_in?
  		@job = Job.first
  	else
  		render 'users/first'
  	end
  end

  def update
    fill_if_empty
    if signed_in?
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
