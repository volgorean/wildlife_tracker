class RegionsController < ApplicationController
  def new
      @currRegions = Region.all
      @region = Region.new
      render :new
    end

    def create
      Region.create(params[:region])
      redirect_to '/regions/new'
    end

    def destroy
      @region = Region.find(params[:id])
      @region.destroy
      redirect_to '/regions/new'
    end
end
