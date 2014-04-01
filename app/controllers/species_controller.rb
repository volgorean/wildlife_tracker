class SpeciesController < ApplicationController
  def new
      @currSpecies = Species.all
      @species = Species.new
      render :new
    end

    def create
      Species.create(params[:species])
      redirect_to '/species/new'
    end

    def destroy
      @species = Species.find(params[:id])
      @species.destroy
      redirect_to '/species/new'
    end
end
