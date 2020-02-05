class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @ducks = Duck.select(:student_id == @student.id)
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.new(students_params)
    if @student.save
      flash[:message] = "student logged"
      redirect_to student_path(@student)
    else
      flash.now[:messages] = @student.errors.full_messages
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(students_params)
      redirect_to student_path(@student)
    else
      render :edit
    end
  end

  private 
  
  def students_params
    params.require(:student).permit(:name, :mod)
  end


end
