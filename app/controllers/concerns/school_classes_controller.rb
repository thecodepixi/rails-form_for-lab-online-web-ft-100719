class SchoolClassesController < ApplicationController

  def index 
    @classes = SchoolClass.all 
  end 

  def new
    @class = SchoolClass.new 
  end 

  def create 
    @class = SchoolClass.new(get_class_params(:title, :room_number))
    @class.save 
    redirect_to school_class_path(@class)
  end 

  def show 
    @class = SchoolClass.find_by(id: params[:id])
  end 

  def edit 
    @class = SchoolClass.find_by(id: params[:id])
  end 
  
  def update
    @class = SchoolClass.find_by(id: params[:id])
    @class.update(get_class_params(:title, :room_number))
    redirect_to school_class_path
  end 

end 