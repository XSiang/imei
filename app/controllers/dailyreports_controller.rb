class DailyreportsController < ApplicationController

  before_action :set_dailyreport, :only => [:edit, :update, :destroy, :show]

  def index
    @dailyreports = Dailyreport.all
  end

  def new
    @dailyreport = Dailyreport.new
    @batchnumbers = Batchnumber.all
    @motions = Motion.all
  end

  def create
    @batchnumbers = Batchnumber.all
    @motions = Motion.all
    @dailyreport = Dailyreport.new(dailyreport_params)

    if @dailyreport.save
      redirect_to dailyreports_url
    else
      render :action => :new
    end

  end

  def edit
    @batchnumbers = Batchnumber.all
    @motions = Motion.all
  end

  def update

    if @dailyreport.update(dailyreport_params)
      redirect_to dailyreports_url
    else
      render :action => :edit
    end

  end

  def destroy
    @dailyreport.destroy

    redirect_to dailyreports_url
  end

  def show
  end

  def convey
    batchnumber = Batchnumber.find(params[:id])
    product =  Product.find(batchnumber.product_id).motions.pluck(:id)

    convey = {:id => batchnumber.id, :motion_id => product}

    respond_to do |format|
      format.json {render json: convey}
    end

  end

  private

  def dailyreport_params
    params.require(:dailyreport).permit(:use_date, :department_id, :batchnumber_id, :amount, :motion)
  end

  def set_dailyreport
    @dailyreport = Dailyreport.find(params[:id])
  end

end
