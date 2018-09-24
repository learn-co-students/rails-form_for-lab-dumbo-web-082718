class SchoolClassesController < ApplicationController

  def index
    @school_class = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.new()
    # byebug
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)

  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end
end
