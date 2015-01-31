class GraphController < ApplicationController
  before_action :handle_signed_in_user, only: :user_graphs
  
  def user_graphs
    @user = current_user
    all_drinks = @user.drinks
    @last_week_drinks_by_day = all_drinks.where("created_at >= ?", Time.now - 30.days)
  end

  private

  def handle_signed_in_user
    redirect_to root_url unless user_signed_in?
  end

end
