class SightingsController < ApplicationController
  def index
    redirect_to '/sightings/new'
  end

  def new
    @species = Species.all
    @regions = Region.all
    @sightings = Sighting.all
    @sighting = Sighting.new
    @speciesNames = [0]
    Species.all.each do |single|
      @speciesNames << single.name
    end
    @regionNames = [0]
    Region.all.each do |single|
      @regionNames << single.name
    end
    render :new
  end

  def create
    Sighting.create(params[:sighting])
    redirect_to ''
  end

end
