class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs.as_json

  end

  def show
    job = Job.find_by(id: params[:id])
    render json: job.as_json

  end

end
