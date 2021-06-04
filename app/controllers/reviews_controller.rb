class ReviewsController < ApplicationController
  
  def new
    @review = Review.new
    @activity = Activity.find(params[:activity_id])
    authorize @review
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)
    @review.activity = @activity
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to activity_path(@review.activity)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :comments)
  end
end
