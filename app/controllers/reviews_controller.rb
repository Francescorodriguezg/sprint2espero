# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    @publication = Publication.find(params[:publication_id])
    @review = @publication.reviews.build
  end

  def create
    @publication = Publication.find(params[:publication_id])
    @review = @publication.reviews.build(reviews_params)
    redirect_to root_path if @review.save
  end

  def reviews_params
    params.require(:review).permit(:publication_id, :review)
  end
end
