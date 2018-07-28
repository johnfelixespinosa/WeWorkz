class CreativesController < ApplicationController
  layout "creative"

  def index
    @locations = Location.all
  end
end
