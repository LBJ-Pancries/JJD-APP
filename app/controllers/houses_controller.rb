class HousesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @house = House.new
  end

  def create
    @category = Category.find(params[:category_id])
    @house = House.new(house_params)
    @house.category = @category
    if @house.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
    @house.destroy
    redirect_to category_path(@category), alert: "House deleted"
  end

  private
  def house_params
    params.require(:house).permit(:title, :description)
  end
end
