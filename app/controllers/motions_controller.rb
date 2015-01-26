class MotionsController < ApplicationController

  before_action :set_motion, :only => [:edit, :update, :destroy]

  def index
    @motions = Motion.all
  end

  def new
    @motion = Motion.new
  end

  def create
    @motion = Motion.new(motion_params)

    if @motion.save
      redirect_to motions_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @motion.update(motion_params)
      redirect_to motions_url
    else
      render :action => :edit
    end

  end

  def destroy
    @motion.destroy

    redirect_to motions_url
  end

  private

  def motion_params
    params.require(:motion).permit(:name, :department_id)
  end

  def set_motion
    @motion = Motion.find(params[:id])
  end

end
