class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  
    def index
      @locations = Location.all
    end
  
    def show
    end
  
    def new
      @location = Location.new
      render partial: 'form'
    end
  
    def create
      @location = Location.new(location_params)
      if @location.save
        redirect_to location_path(@location)
      else
        render partial: 'form'
      end
    end
  
    def edit
    end
  
    private
      def set_location
        @location = Location.find(params[:id])
      end
      def location_params
        params.require(:location).permit(:name, :city, :state, :Country)
      end
  end