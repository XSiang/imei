class SamplesController < ApplicationController

  before_action :set_sample, :only => [:edit, :update, :destroy, :reverse]

  def index
    @sample = Sample.where({:presence => true})
    @sample_hide = Sample.where({:presence => false})
  end

  def new
    @sample = Sample.new
  end

  def create
    @sample = Sample.new(sample_params)

    if @sample.save
      redirect_to samples_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @sample.update(sample_params)
      redirect_to samples_url
    else
      render :action => :edit
    end

  end

  def destroy
    @sample.destroy

    redirect_to samples_url
  end

  def reverse
    @sample.update(:presence => !@sample.presence)

    redirect_to samples_url
  end

  private

  def sample_params
    params.require(:sample).permit(:name)
  end

  def set_sample
    @sample = Sample.find(params[:id])
  end

end
