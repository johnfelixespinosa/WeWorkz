class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params(:name)

    @location.save
  end

  def update
  end

  def show
  end

  private
  
  def location_params(*args)
    params.require(:location).permit(*args)
  end
end