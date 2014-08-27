class JobsController < ApplicationController

  def index
    # @jobs = Job.all
    @response = Job.new.search_profile
  end

end
