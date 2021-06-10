class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @categories = Category.all
    @activities = policy_scope(Activity)
    sql_query = " \
      activities.name @@ :query \
      OR activities.description @@ :query \
      OR activities.address @@ :query \
    "
    selected_categories = Category.where(id: params[:category_ids])

    if params[:category_ids].present?
      @activities = []
      Activity.all.each do |activity|
        activity.categories.each do |category|
          @activities << activity if selected_categories.include?(category)
        end
      end
      @activities.uniq!
      @activities = Activity.where(id: @activities.map(&:id))
    end
    @activities = @activities.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity }),
        id: "marker-#{activity.id}"
      }
    end
  end

  def show
  end

  def my_activities
    @activities = current_user.provided_activities
    authorize Activity
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @provider = current_user
    @activity.provider = @provider
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
    params.require(:activity).permit(:name, :address, :description, :opening_hours, :contact_number, :available_spots, :duration, :price, :banner_photo, photos: [])
  end

end
