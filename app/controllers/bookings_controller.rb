class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    authorize @booking
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user
    authorize @booking
    if @booking.save
      @booking.status = true
      redirect_to activity_path(@booking.activity)
    else
      #raise
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to activities_path
  end


  private

  def booking_params
    params.require(:booking).permit(:date, :number_of_people)
  end
end
