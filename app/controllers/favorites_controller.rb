class FavoritesController < ApplicationController

  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @favorite = Favorite.new
    @favorite.activity = @activity
    @favorite.user = current_user
    authorize @favorite
    if @favorite.save
      redirect_to activity_path(@favorite.activity), notice: 'Activity favorited ❤'
    else
      redirect_to activity_path(@favorite.activity), notice: 'Something went wrong'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    authorize @favorite
    @favorite.destroy
    redirect_to favorites_path, notice: 'Activity unfavorited 💔'
  end
end
