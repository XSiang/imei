class EmployeesController < ApplicationController

  before_action :set_employee, :only => [:edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @employee.update(employee_params)
      redirect_to employees_url
    else
      render :action => :edit
    end

  end

  def destroy
    @employee.destroy
    
    redirect_to employees_url
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :department_id)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
