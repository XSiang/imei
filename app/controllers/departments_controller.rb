class DepartmentsController < ApplicationController

  before_action :set_department, :only => [:edit, :update, :destroy]

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to departments_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @department.update(department_params)
      redirect_to departments_url
    else
      render :action => :edit
    end
    
  end

  def destroy
    @department.destroy

    redirect_to departments_url
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end

  def set_department
    @department = Department.find(params[:id])
  end

end
