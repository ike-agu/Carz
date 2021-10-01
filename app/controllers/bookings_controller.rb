class BookingsController < ApplicationController
  before_action :find_car, except: [:destroy]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    if @booking.save
    # flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to car_path(@booking.car)
  end

  private

  def find_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
