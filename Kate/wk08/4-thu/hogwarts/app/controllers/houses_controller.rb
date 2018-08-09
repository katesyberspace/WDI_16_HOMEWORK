class HousesController < ApplicationController

  def index
    @houses = House.all
    # raise 'help'
  end

  def show
    @house = House.find( params[:id])
  end

end
