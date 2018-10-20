class HousesController < ApplicationController
  before_action :authenticate_user! , only: [:new]
  def index
    @houses = House.all
  end

  def show
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @house = House.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
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

  def update
    @category = Category.find(params[:category_id])
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to category_path(@category), notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to category_path(@category)
    flash[:alert] = "House deleted"
  end

  private

  def house_params
    params.require(:house).permit(:title, :description)
  end
end
