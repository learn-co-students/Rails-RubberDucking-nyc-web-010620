class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:message] = "Successfully Created!"
      redirect_to student_path(@student)
    else
      flash.now[:message] = @student.errors.full_messages[0]
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.valid?
      flash[:message] = "Successfully Updated"
      @student.save
      redirect_to student_path(@student)
    else
      flash.now[:message] = @student.errors.full_messages[0]
      render :edit
    end


  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end
end
