class SchoolClassesController < ApplicationController

  def index
    byebug
    @schoolclasses = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(school_params)
    redirect_to schoolclass_path(@schoolclass)
  end

  private

  def school_params
    params.require(:schoolclass).permit(:title, :room_number)
  end
end
