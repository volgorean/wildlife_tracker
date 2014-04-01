class SightingsController < ApplicationController
  def index
    redirect_to '/sightings/new'
  end

  def new
    @species = Species.all
    @regions = Region.all
    @sightings = Sighting.all
    @sighting = Sighting.new
    render :new
  end

  def create
    Sighting.create(params[:sighting])
    redirect_to ''
  end

  def destroy
      @sighting = Sighting.find(params[:id])
      @sighting.destroy
      redirect_to '/sightings/new'
    end
end
