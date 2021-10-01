class BookingsController < ApplicationController
  before_action :find_car
  def new
    @booking = Booking.new
  end

  def create
  end

  private

  def find_car
    @car = Car.find(params[:car_id])
  end
end
