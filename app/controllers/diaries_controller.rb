class DiariesController < ApplicationController
  def index
    @diaries = Diary.includes(:records).all
  end
  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to @diary
    else
      render :new
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diary_path(@diary), notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path, alert: "Diary deleted"
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :body, :record_ids => [])
  end
end
