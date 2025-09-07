class Api::V1::JobsController < ApplicationController
  #求人を全部一覧で示す
  def index
    render json: Job.all
  end

  #求人をIDで検索して表示
  def show
    render json: Job.find(params[:id])
  end

  #求人を新規作成
  def create
    job = Job.new(job_params)
    if job.save
      render json: job, status: :created
    else
      render json: { errors: job.errors }, status: :unprocessable_entity
    end
  end

  #セキュリティ
  private
  def job_params
  params.require(:job).permit(:title, :category, :salary)
  end
end
