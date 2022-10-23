class JobsController < ApplicationController
  def index
    jobs = Job.all
    render json: jobs.as_json

  end

  def show
    job = Job.find_by(id: params[:id])
    render json: job.as_json

  end

  def create
    job = Job.new
    job.title = params[:title]
    job.pay = params[:pay]
    job.save
    render json: job.as_json

  end

  def update
    job = Job.find_by(id: params[:id])
    job.title = params[:title] || job.title
    job.pay = params[:pay] || job.pay
    job.save
    render json: job.as_json


  end

  def destroy
    job = Job.find_by(id: params[:id])
    job.destroy
    render json: {message: "Destroyed"}


  end

end
