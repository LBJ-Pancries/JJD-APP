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

  def show
    @facilities = Facility.find(params[:id])
  end

  def edit
    @facility = Facility.find(params[:id])
  end

  def update
    @facility = Facility.find(params[:id])
    @facility.update(facility_params)
    redirect_to facilities_path, notice: "Update Success"
  end

  private

  def facility_params
    params.require(:facility).permit(:name, :brand, :type, :power, :size, :commit)
  end
end
