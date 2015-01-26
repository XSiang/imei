class ProductsController < ApplicationController

  before_action :set_prodcut, :only => [:edit, :update, :destroy, :reverse]

  def index
    @product = Product.where({:presence => true})
    @product_hide = Product.where({:presence => false})
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @product.update(product_params)
      redirect_to products_url
    else
      render :action => :edit
    end

  end

  def destroy
    @product.destroy

    redirect_to products_url
  end

  def reverse
    @product.update(:presence => !@product.presence)

    redirect_to products_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :capacity, :presence, :firm_id, :motion_ids => [])
  end

  def set_prodcut
    @product = Product.find(params[:id])
  end

end
