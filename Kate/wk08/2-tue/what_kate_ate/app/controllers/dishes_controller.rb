class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    @dish = Dish.new
  end

  def show
    @dish = Dish.find( params[:id] )
  end

  def create
    @dishes = Dish.all
    @dish = Dish.new
    @dish.name = params[:name]
    @dish.restaurant = params[:restaurant]
    @dish.img_url = params[:img_url]
    if @dish.save
      redirect_to '/dishes'
    else
      render :index
    end
  end

  def update
    @dish = Dish.find( params[:id] )
    @dish.name = params[:name]
    @dish.restaurant = params[:restaurant]
    @dish.img_url = params[:img_url]
    if @dish.save
      redirect_to "/dishes/#{@dish.id}"
    else
      render :show
    end
  end

  def destroy
    @dish = Dish.find( params[:id] )
    @dish.destroy
    redirect_to '/dishes'
  end

end
