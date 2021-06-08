class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]
  
  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    authorize @booking
  end

  def show
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user
    @booking.status = true
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking), notice: "Reservation created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboard_path, notice: "Reservation cancelled!"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :number_of_people, :status)
  end
end
