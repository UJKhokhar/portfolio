class WorksController < ApplicationController
  def show
    @work = Work.find(params[:id])
  end

  def new
  end

  def create
  end

end