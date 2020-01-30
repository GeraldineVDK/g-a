class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to '/#clients'
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_index_path
  end

  private

  def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:title, :rating, :content, :role, :writer)
  end
end
