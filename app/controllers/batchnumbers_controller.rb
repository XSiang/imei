class BatchnumbersController < ApplicationController

  before_action :set_batchnumber, :only => [:edit, :update, :destroy]

  def index
    @batchnumbers = Batchnumber.all
  end

  def new
    @batchnumber = Batchnumber.new
  end

  def create
    @batchnumber = Batchnumber.new(batchnumber_params)

    if @batchnumber.save
      redirect_to batchnumbers_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @batchnumber.update(batchnumber_params)
      redirect_to batchnumbers_url
    else
      render :action => :edit
    end

  end

  def destroy
    @batchnumber.destroy

    redirect_to batchnumbers_url
  end

  private

  def batchnumber_params
    params.require(:batchnumber).permit(:name, :product_id)
  end

  def set_batchnumber
    @batchnumber = Batchnumber.find(params[:id])
  end

end
