class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_params)

    if @duck.save
      flash[:message] = "Duck created!"
      redirect_to duck_path(@duck)
    else
      flash.now[:message] = @duck.errors.full_messages[0]
      render :new
    end
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])

    if @duck.valid?
      flash[:message] = "Duck Updated!"
      @duck.update(duck_params)
      redirect_to duck_path(@duck)
    else
      flash.now[:message] = @duck.errors.full_messages[0]
      render :edit
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
