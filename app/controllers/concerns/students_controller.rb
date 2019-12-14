class StudentsController < ApplicationController

  
  def index 
    @students = Student.all 
  end 

  def new
    @student = Student.new 
  end 

  def create 
    @student = Student.new(get_student_params(:first_name, :last_name))
    @student.save 
    redirect_to student_path(@student)
  end 

  def show 
    @student = Student.find_by(id: params[:id])
  end 

  def edit 
    @student = Student.find_by(id: params[:id])
  end 
  
  def update
    @student = Student.find_by(id: params[:id])
    @student.update(get_student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end 
  
end 