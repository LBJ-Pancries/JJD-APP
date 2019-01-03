class HousesController < ApplicationController
  def index
    @houses = House.all
  end

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

  def show
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to category_house_path(@category), notice: "Update Success"
    else
      render :edit
    end
  end

  private
  def house_params
    params.require(:house).permit(:title, :description, :category_id, :images => [])
  end
end
