class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @response = HTTParty.get "http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=java"
  end

end
