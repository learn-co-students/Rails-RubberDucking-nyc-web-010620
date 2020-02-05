class DucksController < ApplicationController

    def index
      @ducks = Duck.all
    end

    def show
      @duck = Duck.all.find(params[:id])
    end
    
    def new
      @duck = Duck.new
    end

    def create
      duck = Duck.create(duck_params)
      redirect_to duck_path(duck)
    end

    def edit
      @duck = Duck.all.find(params[:id])
    end

    def update
      @duck = Duck.all.find(params[:id])
      @duck.update(duck_params)
      redirect_to ducks_path
    end

    def destroy
      @duck = Duck.all.find(params[:id])
      @duck.destroy
      redirect_to ducks_path
    end

  private

    def duck_params
      params.require(:duck).permit(:name, :description, :student_id)
    end
end
