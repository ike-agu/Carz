class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  # def show
  #  @cars = Car.find (params[:id])
  #  @cars = Car.all
  # end

  # def new
  #  @car = Car.new
  # end

  # def create
  #  @car = car.new(car_params)
  #  @car.user = current_user
  # end

  # def edit
  #  @car = Car.find_by_id(params[:id])
  # end

  # def update
  #  @car = Car.find_by_id(params[:id])
  #  @car = Car.update(island_params)
  # end

  # def destroy
  #  @car = Cars.find(params[:id])
  #  @car.destroy
  # end
end
