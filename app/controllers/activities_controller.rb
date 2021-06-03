class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @activities = policy_scope(Activity)

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity }),
        image_url: helpers.asset_url('new_icon')
      }
    end 
  end

  def show
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @user = current_user
    @activity.user = @user
    authorize @activity
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def activity_params
    params.require(:activity).permit(:name, :address, :description, :opening_hours, :contact_number, :available_spots, :duration, :price)
  end

end
