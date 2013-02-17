class WelcomeController < ApplicationController

  def index
    @code_reviews = CodeReview.all
  end

end
