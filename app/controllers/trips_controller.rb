class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :edit, :destroy, :new_address, :add_address, :delete_address]

def index
  @trips = Trip.all
end

def show
  @addresses = @trip.addresses
end

def new
  @trip = Trip.new
  render partial: "form"
end

def create
  @trip = Trip.new(trip_params)
  if @trip.save
    redirect_to trips_path
  else
    render partial: "form"
  end
end

def edit
  render partial: "form"
end

def update
  if @trip.update(trip_params)
    redirect_to trip_path(@trip)
  else
    render partial: "form"
  end
end

def destroy
  @trip.destroy
  redirect_to trips_path
end

def new_address
  @addresses = Address.all.where(trip_id: nil)
end

def add_address
  @trips.addresses << Address.find(params[:address_id])
  redirect_to trip_path(@trip)
end

def delete_address
  Address.find(params[:address_id]).update(trip_id: nil)
  redirect_to trip_path(@trip)
end

private

  def trip_params
    params.require(:trip).permit(:name)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
