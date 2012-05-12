class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    
    if @student.update_attributes(params[:student])
      redirect_to @student, :flash => {:success => "Student updated." }
    else
      render 'edit'
    end
  end

end
