class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
  # byebug
  @student = Student.new
  @student.first_name = params[:student][:first_name]
  @student.last_name = params[:student][:last_name]
  @student.save
  redirect_to (@student)
  end

  def show
      @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(first_name: params[:student][:first_name],last_name: params[:student][:last_name])
    redirect_to student_path(@student)
    @student.save
  end

end
