class PagesController < ApplicationController
  skip_before_action :require_authentication, only: [ :home, :about ]
  def home
  end

  def about
  end

  def my_books
    @current_user = current_user
  end

  def my_reviews
  end
end
