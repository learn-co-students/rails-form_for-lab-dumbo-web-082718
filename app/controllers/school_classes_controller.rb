class SchoolClassesController < ApplicationController


def index
  @school_classes = School.all
end

def show
  @school = School.find(params[:id])
end

def new
  @school = School.new
end

def create

end




end
