class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_guest

  respond_to :html

  def index
    if params[:physician_id] then
      @reviews = Review.where('physician_id = ?', params[:physician_id])
    else
      @reviews = Review.all
    end

    respond_with(@reviews)
  end

  def show
    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    flash[:notice] = 'Review was successfully created.' if @review.save
    respond_with(@review)
  end

  def update
    flash[:notice] = 'Review was successfully updated.' if @review.update(review_params)
    respond_with(@review)
  end

  def destroy
    @review.destroy
    respond_with(@review)
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def set_guest
    unless current_user
      @current_user = User.find_by_email("guest@guest.com")
    end
  end

  def review_params
    params.require(:review).permit(:overall_score, :comment, :user_id, :physician_id)
  end
end
