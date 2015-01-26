class CartonsController < ApplicationController

  before_action :set_carton, :only => [:edit, :update, :destroy]

  def index
    @cartons = Carton.all
  end

  def new
    @carton = Carton.new
  end

  def create
    @carton = Carton.new(carton_params)

    if @carton.save
      redirect_to cartons_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @carton.update(carton_params)
      redirect_to cartons_url
    else
      render :action => :edit
    end

  end

  def destroy
    @carton.destroy

    redirect_to cartons_url
  end

  private

  def carton_params
    params.require(:carton).permit(:name, :product_ids => [])
  end

  def set_carton
    @carton = Carton.find(params[:id])
  end

end
