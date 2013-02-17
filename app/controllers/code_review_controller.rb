class CodeReviewController < ApplicationController

  before_filter :authenticate_user!

  def new
    @code_review = CodeReview.new
  end

  def create
    code_review = CodeReview.new(params[:code_review])
    reviewee = current_user
    #code_review.reviewee=reviewee
    code_review.created_at=Time.now
    code_review.status=CodeReview::OPEN
    code_review.save
    if !code_review.valid?
      redirect! "/new"
    end
    pp code_review
  end


end
