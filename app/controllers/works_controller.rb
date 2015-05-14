class WorksController < ApplicationController
  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to @work
    else
      flash[:error] = "Error saving work."
      redirect_to :root
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(work_params)
      redirect_to @work
    else 
      flash[:error] = "Error saving work. Please try again."
      render :edit
    end
  end

  private

  def work_params
    params.require(:work).permit( :name, :description, :github, 
                                  :uri, :role, :technologies, 
                                  :screenshots)
  end
end