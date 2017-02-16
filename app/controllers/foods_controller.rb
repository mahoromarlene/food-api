class FoodsController < ApplicationController

  def index
    @foods = Food.all
    render "index.json.jbuilder"
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def create
    @food = Food.create(
      ingredient: params[:ingredient], 
      spice: params[:spice], 
      measurement: params[:measurement]
      )
    render :show

  end

  def update
    @food = Food.find_by(id: params[:id])
    @food = Food.update (
      food = params[:ingredient]
      food = params[:spice]
      food = params[:measurement]
      )
    render :show

  end
  
  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    render :json {message: "Food removed!"}
  end
end
