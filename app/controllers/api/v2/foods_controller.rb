class Api::V2::FoodsController < ApplicationController
  def index
    @foods = Food.all
    render "index.json.jbuilder"
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def create
    @food = Food.create(ingredient: params[:ingredient], spice: params[:spice], measurement: params[:measurement])
    @food.save

  end

  def update
    @food = Food.find_by(id: params[:id])
    food.ingredient = params[:ingredient]
    food.spice = params[:spice]
    food.measurement = params[:measurement]
    @food.save
  end
  
  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    render :json 
  end
end
