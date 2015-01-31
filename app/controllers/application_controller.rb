class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def home
    @last_month_drinks = Drink.all.where("created_at >= ?", Time.now - 30.days)
  end
end
