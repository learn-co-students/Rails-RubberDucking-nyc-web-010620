class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
    @students = Student.select(:id == @duck.student_id)
  end

  def new
    @duck = Duck.new 
  end

  def create
    @duck = Duck.new(ducks_params)
    if @duck.save
      flash[:message] = "duck logged"
      redirect_to duck_path(@duck)
    else
      flash.now[:messages] = @duck.errors.full_messages
      render :new
    end
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])
    if @duck.update(ducks_params)
      redirect_to duck_path(@duck)
    else
      render :edit
    end
  end

  private 
  
  def ducks_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
  
end
