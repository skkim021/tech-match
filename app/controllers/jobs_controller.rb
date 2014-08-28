class JobsController < ApplicationController

  def index
    # @jobs = Job.all
    @response = Job.new
  end

end
