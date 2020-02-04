class StudentsController < ApplicationController

  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
      if @student.save 
        redirect_to student_path(@student)
      else
        flash.now[:message] = @student.errors.full_messages[0]
        render :new
      end
  end 

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  
  

end
