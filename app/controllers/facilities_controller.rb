class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    @facility.save
    redirect_to facilities_path
  end

  private

  def facility_params
    params.require(:facility).permit(:name, :brand, :type, :power, :size, :commit)
  end
end
