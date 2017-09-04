class AddressesController < ApplicationController
  before_action :set_location
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = @location.addresses.new(address_params)
    if @address.save
      redirect_to location_path(@location)
    else
      render partial: 'form'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @location.address.destroy
    redirect_to location_addresses_path
  end  

  private
  def set_location
    @location = Location.find(params[:location_id])
  end
  def set_address
    @address = Address.find(params[:id])
  end
  def address_params
      params.require(:address).permit(:street)
    end
end
