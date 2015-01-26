class FirmsController < ApplicationController

  before_action :set_firm, :only => [:edit, :update, :destroy]

  def index
    @firms = Firm.all
  end

  def new
    @firm = Firm.new
  end

  def create
    @firm = Firm.new(firm_params)

    if @firm.save
      redirect_to firms_url
    else
      render :action => :new
    end

  end

  def edit
  end

  def update

    if @firm.update(firm_params)
      redirect_to firms_url
    else
      render :action => :edit
    end

  end

  def destroy
    @firm.destroy

    redirect_to firms_url
  end

  private

  def firm_params
    params.require(:firm).permit(:name)
  end

  def set_firm
    @firm = Firm.find(params[:id])
  end

end
